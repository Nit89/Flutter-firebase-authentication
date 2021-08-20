import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_service.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Text("welcome"),
          Center(
              child: ElevatedButton(
            onPressed: () async {
              await authService.signOut();
            },
            child: Text("logout"),
          ))
        ],
      ),
    );
  }
}
