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
          title: Text('Овальные Layout'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10, width: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OvalLayout(),
                  OvalLayout(),
                ],
              ),
              SizedBox(height: 10, width: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OvalLayout2(),
                  OvalLayout2(),
                ],
              ),
              SizedBox(height: 10, width: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OvalLayout3(),
                ],
              ),
               SizedBox(height: 10, width: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OvalLayout2(),
                  OvalLayout2(),
                ],
              ),
              SizedBox(height: 10, width: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OvalLayout(),
                  OvalLayout(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OvalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class OvalLayout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 70, 116, 85),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
class OvalLayout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 125, 172, 141),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}