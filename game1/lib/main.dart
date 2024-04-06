import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset rabbitPosition = Offset(50.0, 300.0); // Initial rabbit position

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image (optional)


          Positioned( // Bridge 1
            left: 50.0,
            top: 200.0,
            child: Image.asset(
              'images/bridge.jpeg',
              width: 100.0,
              height: 50.0,
            ),
          ),
          Positioned( // Bridge 2
            right: 70.0,
            bottom: 150.0,
            child: Image.asset(
              'images/bridge2.jpeg',
              width: 80.0,
              height: 70.0,
            ),
          ),
          Positioned( // Rabbit
            left: rabbitPosition.dx, // Dynamically update position on drag
            top: rabbitPosition.dy,
            child: Image.asset(
              'images/rabbit.jpeg',
              width: 50.0,
              height: 50.0,
            ),
          ),
          Positioned( // End line
            right: 20.0,
            bottom: 20.0,
            child: Container(
              width: 50.0,
              height: 20.0,
              color: Colors.green, // Change color to indicate end line
            ),
          ),
        ],
      ),
    );
  }
}


