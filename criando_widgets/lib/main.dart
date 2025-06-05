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
      debugShowCheckedModeBanner: false,      // tira a faixa de 'debug'
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListaContatos( contatos: [    // rederizando widget 'ListaContatos'
        'Luis',
        'Henrique',
        'Silva',
        'Ferreira',
      ],),
    );
  }
}

class ListaContatos extends StatelessWidget {     // widget 'ListaContatos'
  ListaContatos({required this.contatos});
  
  final List<String> contatos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(      // por ser uma tela que será renderizada utiliza 'Scaffold'
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        leading: Icon(Icons.contact_phone),   // icone
        centerTitle: true,    // centraliza o texto
      ),

      body: ListView.builder(        
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.person_outline),
          title: Text(contatos[index],
          ),
          trailing: Container(
            width: 60,
            child: Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 6),
                Icon(Icons.delete),
              ],
            ),
          ),
        ),
        itemCount: contatos.length,
      ),
    );
  }
}