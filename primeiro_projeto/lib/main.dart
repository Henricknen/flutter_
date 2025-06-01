import 'package:flutter/material.dart';

void main() {     // 'main' e a função principal
  runApp(const MyApp());    // função 'runApp' é onde é passado o width principal 'MyApp'
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    // método build de MyApp retorna width 'MaterialApp'
    return MaterialApp(   // MaterialApp informa varias 'configurações' do projeto
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),    // na propriedade 'home' é passado o primeiro width que será renderizado na tela, nesse caso será o 'MyHomePage'
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
  Widget build(BuildContext context) {    // método 'build'    
    return Scaffold(      // 'Scaffold' é um width que da uma forma geral pra tela
      appBar: AppBar(        // propriedade 'appBar' passa um width 'AppBar' com a 'cor de fundo' e o 'título' da appbar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(     // propriedade body utilizando width 'Center' que tem a função de centralizar tudo na tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(     //  propriedade 'floatingActionButton' passando width 'FloatingActionButton' que cria um botão
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
