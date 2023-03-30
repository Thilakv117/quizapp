import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/Homepage/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  int initialIndex = 0;
  late Timer timer;
  int seconds = 0;
  String selectedIndex = "";
  String answer = "";
  int mark = 0;
  late SharedPreferences preferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  addTime() {
    if (seconds == 30) {
      seconds = 0;
      next();
    }
    seconds++;

    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

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
        "correctAnswer": "Chennai",
      },
      {
        "question": "What is Capital of Karnataka?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Banglore",
      },
      {
        "question": "What is Capital of Maharastra?",
        "answer": ["Chennai", "Banglore", "Delhi", "Mumbai"],
        "correctAnswer": "Mumbai",
      },
    ]
  };

  next() {
    if (initialIndex != questions["questions"].length - 1) {
      if (selectedIndex != "") {
        if (questions["questions"][initialIndex]["answer"]
                [int.parse(selectedIndex)] ==
            questions["questions"][initialIndex]["correctAnswer"]) {
          mark = mark + 10;
        }
      }
      initialIndex++;
      seconds = 0;
      selectedIndex = "";

      setState(() {});
    }
  }

  getButtonColor(i) {
    if (selectedIndex == i.toString()) {
      if (questions["questions"][initialIndex]["answer"][i] ==
          questions["questions"][initialIndex]["correctAnswer"]) {
        return Colors.green;
      } else {
        Text(questions["questions"][initialIndex]["correctAnswer"]);
        return Colors.red;
      }
    } else {
      if (selectedIndex != "") {
        if (questions["questions"][initialIndex]["answer"][i] ==
            questions["questions"][initialIndex]["correctAnswer"]) {
          return Colors.green;
        }
      }

      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Questions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(seconds.toString()),
            Text(questions["questions"][initialIndex]["question"]),
            for (int i = 0;
                questions["questions"][initialIndex]["answer"].length > i;
                i++)
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: getButtonColor(i)),
                  onPressed: () {
                    setState(() {
                      if (selectedIndex == "") {
                        selectedIndex = i.toString();
                      }
                    });
                  },
                  child:
                      Text(questions["questions"][initialIndex]["answer"][i])),
            ElevatedButton(
              onPressed: () async {
                if (initialIndex == questions["questions"].length - 1) {
                  preferences = await SharedPreferences.getInstance();
                  preferences.setInt('Total', mark);
                  

                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                } else {
                  next();
                }
              },
              child: Text(initialIndex == questions["questions"].length - 1
                  ? "Done"
                  : "Next"),
            ),
            const SizedBox(height: 50),
            Center(
              child: LinearProgressIndicator(
                value: initialIndex / (questions["questions"].length - 1),
              ),
            ),
            SizedBox(height: 50),
            Text('The Marks is : $mark'),
          ],
        ),
      ),
    );
  }
}
