import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_service.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
              onPressed: () async {
                await authService.createUserWithEmailAndPassword(
                    emailcontroller.text, passwordcontroller.text);
                Navigator.pop(context);
              },
              child: Text("signup"))
        ],
      )),
    );
  }
}
