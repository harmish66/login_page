import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 30,
                    left: 35),
                child: Column(
                  children: [
                    Text('STUDENT',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: passController,
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RawMaterialButton(
                          onPressed: () {
                            FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passController.text.trim());
                          },
                          child: Text(
                            'Sing in',
                            style: TextStyle(fontSize: 20),
                          ),
                          fillColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          constraints: BoxConstraints.tightFor(
                              height: 50.0, width: 100.0),

                        ),
                        RawMaterialButton(
                          onPressed: () {
                            FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passController.text.trim());
                          },
                          child: Text(
                            'Sing up',
                            style: TextStyle(fontSize: 20),
                          ),
                          fillColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          constraints: BoxConstraints.tightFor(
                              height: 50.0, width: 100.0),

                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'teacher');
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'TEACHER',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
