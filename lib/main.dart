import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: BodyFtn(),
      ),
    );
  }
}

class BodyFtn extends StatefulWidget {
  @override
  _BodyFtnState createState() => _BodyFtnState();
}

class _BodyFtnState extends State<BodyFtn> {
  int randomNumber=3;
  void imageNumberChangeFunction(){
    Random random=new Random();
    randomNumber=random.nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: TextButton(
            onPressed: () {
           setState(() {
             imageNumberChangeFunction();

           });
            },
            child: Container(
              child: Image.asset('images/dice$randomNumber.png'),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: TextButton(
            onPressed: () {
               setState(() {
                 imageNumberChangeFunction();

               });

            },
            child: Container(
              child: Image.asset('images/dice$randomNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
