import 'package:flutter/material.dart';
import 'package:quizapp/QuizQuestions/quizQuestions.dart';
import 'package:quizapp/previousScore/PreviousScore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences preferences;
   int totalMark=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }

  initialize() async {
    preferences = await SharedPreferences.getInstance();
    totalMark = preferences.getInt('Total') ?? 0;

    setState(() {
      
    });
  }

  @override
  int get b => 40;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: 400, height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuizQuestions()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black.withBlue(b),
              shape: StadiumBorder(),
            ),
            child: Text('Play'),
          ),
         
          SizedBox(height: 50),
          Text('The Previous Score is: $totalMark'),
        ],
      ),
    );
  }
}
