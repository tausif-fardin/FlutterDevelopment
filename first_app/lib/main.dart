import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    // ignore: avoid_print
    print('Answer Chosen!');
  }

  @override //decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            const Text('The question!'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
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
