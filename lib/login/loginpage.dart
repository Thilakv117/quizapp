import 'package:flutter/material.dart';
import 'package:quizapp/Homepage/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController phoneNumberController=TextEditingController();
TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp Login Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(height: 60, width: 400),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 30,
              width: 50,
            ),
            const Text('UserName'),
             SizedBox(
              width: 300,
              child: TextField(
                controller: phoneNumberController,
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                  
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 30),
             SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if(phoneNumberController.text=="9999999991"&&passwordController.text=="123456"){
      
                }
                else{
                  print("object");
                  const snackBar = SnackBar(
                    content: Text("Invalid phone no, or password"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomePage(),));
              },
              child:const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
