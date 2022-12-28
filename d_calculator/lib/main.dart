import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var userQusetion = '';
var userAnswer = '';

final myTextStyle = TextStyle(fontSize: 30, color: Colors.deepPurple[900]);

final List<String> buttons = [
  'C',
  'DEL',
  '%',
  '/',
  '9',
  '8',
  '7',
  'x',
  '6',
  '5',
  '4',
  '-',
  '3',
  '2',
  '1',
  '+',
  '0',
  '.',
  'ANS',
  '=',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50),
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userQusetion,
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),

// Buttons Area
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  // Clear Button
                  if (index == 0) {
                    return MyButton(
                      color: Colors.green,
                      buttonText: buttons[index],
                      textColor: Colors.white,
                      buttonTapped: (){
                       setState(() {
                          userQusetion = '';
                       });
                      },
                    );
                  } 
                  // Delete Button
                  else if (index == 1) {
                    return MyButton(
                      color: Colors.red,
                      buttonText: buttons[index],
                      textColor: Colors.white,
                      buttonTapped: (){
                       setState(() {
                          userQusetion = userQusetion.substring(0,userQusetion.length-1);
                       });
                      },
                    );
                  }

                // Equal Button
                  else if (index == buttons.length-1) {
                    return MyButton(
                      color: Colors.deepPurple,
                      buttonText: buttons[index],
                      textColor: Colors.white,
                      buttonTapped: (){
                       setState(() {
                          equalPressed();
                       });
                      },
                    );
                  }

                // Rest of the Buttons
                  else {
                    return MyButton(
                      color: isOperator(buttons[index])
                          ? Colors.deepPurple
                          : Colors.deepPurple[50],
                      buttonText: buttons[index],
                      textColor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.deepPurple,
                      buttonTapped: (){
                        setState(() {
                          userQusetion += buttons[index];
                        });
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' ||
        x == '/' ||
        x == 'x' ||
        x == '-' ||
        x == '+' ||
        x == '=' ||
        x == 'ANS') {
      return true;
    }
    return false;
  }

  void equalPressed(){
    String finalQuestion = userQusetion;
    finalQuestion = finalQuestion.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}
