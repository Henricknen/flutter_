import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget',
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
    final List<String> MeuNome = [    // Lista de 'nome e sobrenome' do profissional
      'Luis',
      'Henrique',
      'Silva',
      'Ferreira',
    ];

    return Scaffold(
      appBar: AppBar(      // Widget 'Scaffold' facilita muitas coisas como dar a propriedade de posicionamento com o 'appbar'
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(     // Widget 'Center' centraliza o conteúdo na tela        
        child: Column(
          children: [
            Text(
              'Dois widgets Containers!!!',
              style: TextStyle(     // Propriedade 'style' que passa um widget chamado 'TextStyle' que permite formatar o texto                
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            Row(    // Widget 'Row' é semelhante ao Column, mas ao invés de dispor os elementos na 'vertical' ele dispõe na 'horizontal'              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(    // Widget 'Container' é semelhante a uma div                  
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
                SizedBox(width: 12),    // Widget 'SizedBox' permite dar um espaçamento entre coisas
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
              ],
            ),

            SizedBox(height: 50),   // Dando espaço na altura

            Row(
              // Linha de ícones
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_alarm, size: 48, color: Colors.blue),   // Ícone de relógio
                Icon(Icons.account_circle, size: 60, color: Colors.blue),   // Ícone de círculo
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Profissional:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),
            
            SizedBox(
              height: 200,    // define altura da ListView
              child: ListView.builder(
                itemCount: MeuNome.length,    // 'itemCount' indica quantos widgets serão renderizados
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),    // propriedade 'leading' permite inserir ícones
                    title: Text(MeuNome[index]),    // o título de ListTile será um texto com itens da lista de 'nome e sobrenome'
                    trailing: Container(    // utilizando 'Container' dentro da propriedade 'trailing' para criar uma 'Row' e inserir mais de um icone
                      width: 60,
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          SizedBox(width: 4),
                          GestureDetector(      // widget 'GestureDetector' permite adicionar comportamentos aos widgets
                            onTap: () {
                              print('deletando');   // após botão de delete for clicado aparecerá essa menssagem
                            },
                            child: Icon(Icons.delete),   // widget que receberá o toque
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}