import 'dart:math';

import 'package:flutter/material.dart';

// Main function
void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

// Root widget
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask me anything',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

// Stateful widgets
class Ball extends StatefulWidget {
  const Ball({super.key});
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

