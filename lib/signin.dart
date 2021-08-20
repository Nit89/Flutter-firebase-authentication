import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_service.dart';
import 'package:provider/provider.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(height: 60.0),
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              labelText: "email",
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
            ),
          ),
          SizedBox(height: 40.0),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              labelText: " password",
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: () {
              authService.signInWithEmailAndPassword(
                  emailcontroller.text, passwordcontroller.text);
            },
            child: Text("signin"),
          ),
          SizedBox(height: 40.0),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text("Signup")),
        ],
      )),
    );
  }
}
