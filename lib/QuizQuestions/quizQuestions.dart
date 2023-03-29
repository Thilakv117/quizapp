import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Questions'),
      ),
      body: Column(
        children: [
           SizedBox(height: 20, width: 400),
           Text('1 - What is the Answer for 1234 % 10'),
           SizedBox(height: 20),
            Row(
              children: [
                 SizedBox(width: 100),
                ElevatedButton(onPressed: () {},
                 child: Text('4'),
            ),
             SizedBox(width: 50),
                ElevatedButton(onPressed: () {},
                 child: Text('1'),
            ),
              ],
            ),
             SizedBox(height: 20),
            Row(
              children: [
                 SizedBox(width: 100),
                ElevatedButton(onPressed: () {},
                 child: Text('3'),
            ),
             SizedBox(width: 50),
                ElevatedButton(onPressed: () {},
                 child: Text('2'),
            ),
              ],
            ),
        ],
      ),
    );
  }
}
