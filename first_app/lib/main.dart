import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // MyApp({Key? key}) : super(key: key);

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override //decorator
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite food?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            Text(questions[1]),

            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Answer-2');
              },
              child: const Text('Answer 2'),
            ), //ElevatedButton new replacedment
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => print('Answer-3'),
              child: const Text('Answer 3'),
            ), //ElevatedButton new replacedment
            //ElevatedButton new replacedment
          ],
        ),
      ),
    );
  }
}
