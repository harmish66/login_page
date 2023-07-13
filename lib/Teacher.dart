import 'package:flutter/material.dart';

class MyTeacher extends StatefulWidget {
  const MyTeacher({super.key});

  @override
  State<MyTeacher> createState() => _TeacherState();
}

class _TeacherState extends State<MyTeacher> {
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
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    Text('TEACHER',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold )),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
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
                          onPressed: () {},
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'STUDENT',
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
