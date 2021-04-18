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

  void _operation(Function(int, int) func) {
    setState(() {
      resultado = func(resultado, 1);
    });
  }

  int add(num1, num2) {
    return num1 + num2;
  }

  int sub(num1, num2) {
    return num1 - num2;
  }

  int mul(num1, num2) {
    return num1 * num2 * 2;
  }

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
          OperationFloatActionButton(Icon(Icons.remove), () {
            _operation(sub);
          }),
          OperationFloatActionButton(Icon(Icons.add), () {
            _operation(add);
          }),
          OperationFloatActionButton(Icon(Icons.star), () {
            _operation(mul);
          })
        ],
      ),
    );
  }
}

class OperationFloatActionButton extends StatelessWidget {
  final Function func;
  final Widget icon;

  OperationFloatActionButton(this.icon, this.func, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: func,
      child: icon,
    );
  }
}
