import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Овальные Прямоугольники с Цифрами'),
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
                    OvalRectangle2(number2: '1', width2: 0.455, height2: 0.3,), 
                    OvalRectangle2(number2: '2', width2: 0.455, height2: 0.3,), 
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(number: '3', width: 0.455, height: 0.1,), 
                    OvalRectangle(number: '4', width: 0.455, height: 0.1,), 
                  ],
                ),
                SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(number: '5', width: 0.455, height: 0.1,), 
                    OvalRectangle(number: '6', width: 0.455, height: 0.1,), 
                  ],
                ),
                SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle2(number2: '7', width2: 0.455, height2: 0.3,), 
                    OvalRectangle2(number2: '8', width2: 0.455, height2: 0.3,), 
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

class OvalRectangle extends StatelessWidget {
  final String number;
  final double width;
  final double height; 

  OvalRectangle({required this.number, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;


    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 123, 187, 150), 
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}
class OvalRectangle2 extends StatelessWidget {
  final String number2;
  final double width2;
  final double height2; 

  OvalRectangle2({required this.number2, required this.width2, required this.height2});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth2 = MediaQuery.of(context).size.width;
    double rectangleWidth2 = screenWidth2 * width2; 
    // Вычисляем высоту прямоугольника
    double screenHeight2 = MediaQuery.of(context).size.height;
    double rectangleHeight2 = screenHeight2 * height2 - 4;


    return Container(
      width: rectangleWidth2,
      height: rectangleHeight2,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 71, 233, 125), 
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          number2,
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}
