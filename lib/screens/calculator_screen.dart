import 'package:flutter/material.dart';



import 'package:calculadora/widgets/calc_button.dart';
import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import '../widgets/math_results.dart';



class CalculatorScreen extends StatelessWidget {

final calculatorCtrl = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                    MathResults(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CalculatorButton(
                        text: 'AC',
                        big: true,
                        bgColor: Color.fromARGB(255, 225, 30, 30),
                        onPressed: () => calculatorCtrl.resetAll(),
                      ),
                      CalculatorButton(
                        text: '>',
                        big: true,
                        bgColor: Color.fromARGB(255, 222, 8, 8),
                        onPressed: () => calculatorCtrl.deleteLastEntry(),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CalculatorButton(
                        text: 'tan',
                        bgColor: Color(0xffF0A23B),
                       onPressed: () => calculatorCtrl.calculateTangent(),
                      ),
                      CalculatorButton(
                        text: 'sen',
                        bgColor: Color(0xffF0A23B),
                        onPressed: () => calculatorCtrl.calculateSine(),
                      ),
                      CalculatorButton(
                        text: 'cos',
                        bgColor: Color(0xffF0A23B),
                        onPressed: () => calculatorCtrl.calculateCosine(),
                      ),
                      CalculatorButton(
                        text: '/',
                        bgColor: Color(0xffF0A23B),
                          onPressed: () => calculatorCtrl.selectOperation('/'),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CalculatorButton(
                        text: '7',
                        onPressed: () => calculatorCtrl.addNumber('7'),
                      ),
                      CalculatorButton(
                        text: '8',
                         onPressed: () => calculatorCtrl.addNumber('8'),
                      ),
                      CalculatorButton(
                        text: '9',
                         onPressed: () => calculatorCtrl.addNumber('9'),
                      ),
                      CalculatorButton(
                        text: 'x',
                        bgColor: Color(0xffF0A23B),
                       onPressed: () => calculatorCtrl.selectOperation('x'),
                      ),
                    ],
                  ),

                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => calculatorCtrl.addNumber('4'),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => calculatorCtrl.addNumber('5'),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => calculatorCtrl.addNumber('6'),
                  ),
                  CalculatorButton( 
                    text: '-',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.selectOperation('-'),
                  ),
                ],
              ),

                       Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => calculatorCtrl.addNumber('2'),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => calculatorCtrl.addNumber('3'),
                  ),
                  CalculatorButton(
                    text: '+',  
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.selectOperation('+'),
                  ),
                ],
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CalculatorButton(
                        text: '0',
                        onPressed: () => calculatorCtrl.addNumber('0'),
                      ),
                      CalculatorButton(
                        text: '+/-',
                        bgColor: Color(0xffA5A5A5),
                        onPressed: () => calculatorCtrl.changeNegativePositive(),
                      ),
                      CalculatorButton(
                        text: '.',
                        onPressed: () => calculatorCtrl.addDecimalPoint(),
                      ),
                      CalculatorButton(
                        text: '=',
                        bgColor: Color(0xffF0A23B),
                        onPressed: () => calculatorCtrl.calculateResult(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
