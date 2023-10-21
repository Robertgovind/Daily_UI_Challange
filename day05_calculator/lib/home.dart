import 'package:day05_calculator/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? firstNumber;
  double? secondNumber;
  var input = "";
  var output = "";
  var operation = "";

  onClick(value) {
    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userInput = input;
        userInput = input.replaceAll("x", "*");
        Parser p = Parser();
        Expression exp = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = exp.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith(".1")) {
          output = output.substring(0, output.length - 2);
        }
      }
    } else {
      input = input + value;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    output,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              button(
                  text: "AC",
                  textColor: orangeColor,
                  buttonBgColor: operatorColor),
              button(
                text: "<",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
              button(
                text: "%",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
              button(
                text: "/",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              button(
                text: "7",
                textColor: Colors.white,
              ),
              button(
                text: "8",
                textColor: Colors.white,
              ),
              button(
                text: "9",
                textColor: Colors.white,
              ),
              button(
                text: "x",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              button(
                text: "4",
                textColor: Colors.white,
              ),
              button(
                text: "5",
                textColor: Colors.white,
              ),
              button(
                text: "6",
                textColor: Colors.white,
              ),
              button(
                text: "-",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              button(
                text: "1",
                textColor: Colors.white,
              ),
              button(
                text: "2",
                textColor: Colors.white,
              ),
              button(
                text: "3",
                textColor: Colors.white,
              ),
              button(
                text: "+",
                textColor: orangeColor,
                buttonBgColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              button(
                text: "0",
                textColor: Colors.white,
              ),
              button(
                text: "00",
                textColor: Colors.white,
              ),
              button(
                text: ".",
                textColor: Colors.white,
              ),
              button(
                  text: "=",
                  textColor: Colors.white,
                  buttonBgColor: orangeColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({
    text,
    textColor = Colors.white,
    buttonBgColor = buttonColor,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: buttonBgColor, padding: const EdgeInsets.all(10)),
          onPressed: () {
            onClick(text);
          },
          child: Text(
            text,
            style: TextStyle(
                fontSize: 19, color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
