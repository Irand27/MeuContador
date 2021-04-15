import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaInicial(),
  ));
}

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  var resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Você pressionou o botão",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 34),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                resultado -= 1;
              });
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                resultado += 1;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
