import 'package:flutter/material.dart';
import "package:lesson/widget/widget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Шкаф'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle2(number2: '1', width2: 0.455, height2: 0.3, colortxt2: Color.fromARGB(255, 166, 48, 224),), 
                    OvalRectangle2(number2: '2', width2: 0.455, height2: 0.3, colortxt2: Color.fromARGB(255, 0, 0, 0),), 
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(number: '3', width: 0.455, height: 0.1, colortxt: Color.fromARGB(255, 219, 47, 211),), 
                    OvalRectangle(number: '4', width: 0.455, height: 0.1, colortxt: Color.fromARGB(255, 214, 153, 40),), 
                  ],
                ),
                SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(number: '5', width: 0.455, height: 0.1, colortxt: Color.fromARGB(255, 43, 164, 219),), 
                    OvalRectangle(number: '6', width: 0.455, height: 0.1, colortxt: Color.fromARGB(255, 236, 64, 64),), 
                  ],
                ),
                SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle2(number2: '7', width2: 0.455, height2: 0.3, colortxt2: Color.fromARGB(255, 209, 43, 43),), 
                    OvalRectangle2(number2: '8', width2: 0.455, height2: 0.3, colortxt2: Color.fromARGB(255, 255, 255, 255),), 
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

