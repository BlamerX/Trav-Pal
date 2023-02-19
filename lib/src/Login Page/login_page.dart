// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //logo

          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          //Password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          //signin button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.purple[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          // not a member? Register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Not a member?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' Register Now',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
