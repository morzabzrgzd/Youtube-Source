import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class RotateCard3DPage extends StatefulWidget {
  const RotateCard3DPage({Key? key}) : super(key: key);
  @override
  State<RotateCard3DPage> createState() => _RotateCard3DPageState();
}

class _RotateCard3DPageState extends State<RotateCard3DPage> {
  double x = 0.00;
  double y = 0.00;
  double amplitude = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text(
          'Rotate Card3D',
          style: GoogleFonts.montserrat(),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/card.png'),
                ),
                boxShadow: [
                  const BoxShadow(color: Colors.black26, blurRadius: 28),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
