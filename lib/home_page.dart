import 'package:flutter/material.dart';
import 'package:projeto_calculadora/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MeuAppState();
}

class _MeuAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Valor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.black,
                height: 150,
              ),
              Divider(
                color: Colors.grey[900],
                thickness: 3,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(title: 'C', textColor: Colors.red, onPressed: (){},),
                  CalculatorButton(title: '( )', textColor: Colors.green, onPressed: (){},),
                  CalculatorButton(title: '%', textColor: Colors.green, onPressed: (){}),
                  CalculatorButton(title: '÷', textColor: Colors.green, onPressed: (){} ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(title: '7', onPressed: (){}),
                  CalculatorButton(title: '8', onPressed: (){}),
                  CalculatorButton(title: '9', onPressed: (){}),
                  CalculatorButton(title: 'X', textColor: Colors.green, onPressed: (){}),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(title: '4', onPressed: (){}),
                  CalculatorButton(title: '5', onPressed: (){}),
                  CalculatorButton(title: '6', onPressed: (){}),
                  CalculatorButton(title: '-', textColor: Colors.green, onPressed: (){}),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(title: '1', onPressed: (){}),
                  CalculatorButton(title: '2', onPressed: (){}),
                  CalculatorButton(title: '3', onPressed: (){}),
                  CalculatorButton(title: '+', textColor: Colors.green, onPressed: (){}),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(title: '+/-', onPressed: (){}),
                  CalculatorButton(title: '0', onPressed: (){}),
                  CalculatorButton(title: ',', onPressed: (){}),
                  CalculatorButton(title: '=', backgroundColor: Colors.green, onPressed: (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
