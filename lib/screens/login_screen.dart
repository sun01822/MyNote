import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mynote/screens/sign_up_screen.dart';

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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Login"),
        // actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Lottie.asset("assets/login.json"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility),
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Card(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Forget Password'),
          )),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const SignupScreen());
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Don\'t have an an accout SignUp'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
