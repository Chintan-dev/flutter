// ignore_for_file: file_name

import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  get emailController => null;
  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialApp(
          home: Scaffold(
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //logintext
              const Text('Login'),
              const SizedBox(height: 20),
              //Username input
              TextField(
                controller: emailController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 20),
              //password input
              TextField(
                controller: passwordController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'password'),
              ),
              //signup page
              const SizedBox(height: 20),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(60)),
                  onPressed: (() => {}),
                  icon: const Icon(Icons.login_sharp),
                  label: const Text('Login')),
              const SizedBox(height: 20),
              //google login
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(60)),
                  onPressed: (() => {}),
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text('Sign in with Google')),
            ],
          ),
        )),
      ));
    });
  }
}
