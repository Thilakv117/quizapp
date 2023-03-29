import 'package:flutter/material.dart';
import 'package:quizapp/QuizQuestions/quizQuestions.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int get b => 40;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: 400 , height: 100),
          ElevatedButton(onPressed: (){
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
            SizedBox(height: 30),
          ElevatedButton(onPressed: (){},
           style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black.withBlue(b),
            shape: StadiumBorder(),
           ),
           child: Text('Previous Scores'),
           ),
        ],
      ),
    );
  }
}