import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mynote/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Sign Up"),
        // actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Lottie.asset("assets/login.json"),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'UserName',
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
                prefixIcon: Icon(Icons.phone),
                hintText: 'Phone',
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
            child: const Text('Sign Up'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const LoginScreen());
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Already have an an account Log In'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
