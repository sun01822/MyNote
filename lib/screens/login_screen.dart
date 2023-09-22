import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Lottie.asset("login.json"),
          )
        ]),
      ),
    );
  }
}
