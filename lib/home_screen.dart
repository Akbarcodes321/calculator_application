import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = ' ';
  var answer = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xffE0E0E0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/customlogo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                      color: Color(0xff004D40)
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Expanded(
                            child: SingleChildScrollView(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                userInput.toString(),
                                style: const TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                      ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Text(
                            answer.toString(),
                            style: const TextStyle(
                              color: Color(0xff000000),
                              fontSize: 60,
                            ),
                            overflow: TextOverflow.clip
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xffE0E0E0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Button(
                              name: 'AC',
                              color: const Color(0xffFFAB40),
                              onPress: () {
                                userInput = ' ';
                                answer = ' ';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '+/-',
                              color: const Color(0xffFFAB40),
                              onPress: () {
                                  toggleSign();
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '%',
                              color: const Color(0xffFFAB40),
                              onPress: () {
                                userInput += '%';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '÷',
                              color: const Color(0xff80DEEA),
                              onPress: () {
                                userInput += '/';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Button(
                              name: '7',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '7';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '8',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '8';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '9',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '9';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: 'x',
                              color: const Color(0xff80DEEA),
                              onPress: () {
                                userInput += 'x';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Button(
                              name: '4',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '4';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '5',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '5';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '6',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '6';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '-',
                              color: const Color(0xff80DEEA),
                              onPress: () {
                                userInput += '-';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Button(
                              name: '1',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '1';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '2',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '2';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '3',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '3';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '+',
                              color: const Color(0xff80DEEA),
                              onPress: () {
                                userInput += '+';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Button(
                              name: '0',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '0';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: '.',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                userInput += '.';
                                setState(() {});
                              },
                            ),
                            Button(
                              name: 'DEL',
                              color: const Color(0xffE0F7FA),
                              onPress: () {
                                if (userInput.isNotEmpty) {
                                  userInput =
                                      userInput.substring(0, userInput.length - 1);
                                  setState(() {});
                                }
                              },
                            ),
                            Button(
                              name: '=',
                              color: const Color(0xff80DEEA),
                              onPress: () {
                                equalPress();
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('÷', '/');
    finaluserinput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    userInput = ' ';
    if (eval % 1 == 0) {
      answer = eval.toInt().toString();
    } else {
      answer = eval.toString();
    }
  }
  void toggleSign() {
    if (userInput.isNotEmpty) {
      RegExp regex = RegExp(r'([-]?[0-9]*\.?[0-9]+)$');
      Match? match = regex.firstMatch(userInput);
      if (match != null) {
        String lastNumber = match.group(0)!;
        lastNumber = lastNumber.startsWith('-') ? lastNumber.substring(1) : '-$lastNumber';
        userInput = userInput.replaceRange(match.start, match.end, lastNumber);
        setState(() {});
      }
    }
  }
}
