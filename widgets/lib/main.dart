import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),

      home: const MyHomePage(title: 'Criando Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      // widget 'Scaffold' faciliata muitas coisas como dar a propriedade de posiçionamento com o 'appbar'
      appBar: AppBar(       // widget 'AppBar' sendo pasado na propriedade appbar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Título'),
      ),

      body: Center(   // widget 'Center' centraliza o conteúdo na tela
        child: Column(    // widget 'Column' é utilizado para inserir widgets um embaixo do outro
          children: [
            Text(    // widget 'Text' permite inserir textos
              'Dois widgets Containers!!!',
              style: TextStyle(     // propriedade 'style' que passa um widget chamado 'TextStyle' que permite formatar o texto
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              ),
            ),

            Row(   // widget 'Row' é semelhante ao Column mas ao invés de dispor os elementos na 'vertical' ele dispõe na 'horizontal'
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[   // propriedade 'children' é um array, que permite passar varios  widgets
                Container(        // widget 'Container' é semelhante a uma div
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),

                SizedBox(width: 12),      // widget 'SizedBox' permite dar um espaçamento entre coisas

                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
              ],
            ),

            SizedBox(height: 50),     // dando espaço na altura

            Row(    // linha de icones
              mainAxisAlignment: MainAxisAlignment.center,    // propriedade 'mainAxisAlignment' perminte alinha o conteúdo ao centro
              children: [
                Icon(Icons.access_alarm, size: 48, color: Colors.blue),    // icone de relógio
                Icon(Icons.account_circle, size: 60, color: Colors.blue),   // iconde de círculo
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(     // propriedade 'floatingActionButton' passando widget 'FloatingActionButton' resposável por criar um botão
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
