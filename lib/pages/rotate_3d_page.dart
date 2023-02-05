import 'dart:math';

import 'package:flutter/material.dart';

class Rotate3DPage extends StatefulWidget {
  const Rotate3DPage({super.key});

  @override
  State<Rotate3DPage> createState() => _Rotate3DPageState();
}

class _Rotate3DPageState extends State<Rotate3DPage> {
  double x = 0.00;
  double y = 0.00;
  double amplitude = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text('Rotate 3D'),
      ),
      body: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..rotateX(x)
            ..rotateY(y),
          child: GestureDetector(
            onPanUpdate: (value) {
              if (y - value.delta.dx < 0) {
                setState(() {
                  y = max(y - value.delta.dx / 100, -amplitude);
                });
              } else {
                setState(() {
                  y = min(y - value.delta.dx / 100, amplitude);
                });
              }
              if (x - value.delta.dy < 0) {
                setState(() {
                  x = max(x - value.delta.dy / 100, -amplitude);
                });
              } else {
                setState(() {
                  x = min(x - value.delta.dy / 100, amplitude);
                });
              }
            },
            child: Container(
              height: 450,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/card.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
