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
                ElevatedButton(onPressed: import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  int initialIndex = 0;

  Map questions = {
    "questions": [
      {
        "question": "What is 1+1?",
        "answer": ["1", "2", "3", "4"],
        "correctAnswer": "2",
      },
      {
        "question": "What is 2+2?",
        "answer": ["1", "2", "3", "4"],
        "correctAnswer": "4",
      },
      {
        "question": "What is Capital of India?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Delhi",
      },
      {
        "question": "What is Capital of Tamilnadu?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Delhi",
      },
      {
        "question": "What is Capital of Karnataka?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Delhi",
      },
      {
        "question": "What is Capital of Maharastra?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Delhi",
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Questions'),
      ),
      body: Column(
        children: [
          Text(questions["questions"][initialIndex]["question"]),
          for (int i = 0;
              questions["questions"][initialIndex]["answer"].length > i;
              i++)
            Text(questions["questions"][initialIndex]["answer"][i]),
          ElevatedButton(
              onPressed: () {
                if (initialIndex != questions["questions"].length - 1) {
                  initialIndex++;
                  setState(() {});
                }
              },
              child: Text("Next"))
        ],
      ),
    );
  }
}
() {},
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
