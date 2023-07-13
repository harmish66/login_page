// import 'dart:js';

// import 'dart:js';

// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_page/HomePage.dart';
import 'package:login_page/Teacher.dart';

import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // runApp(const MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Fluttertoast.showToast(
                msg: "Succefully Login",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            return const Home();
          } else {
            Fluttertoast.showToast(
                msg: "Fail",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            return const Login();
          }
        }),
    /*initialRoute: 'login',
    routes: {
      'login': (context) => Login()
      // 'teacher': (context) => MyTeacher()
    },*/
  ));
}
