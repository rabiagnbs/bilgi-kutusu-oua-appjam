import 'dart:ui';

import 'package:flutter/material.dart';

class CostomText extends StatelessWidget {
  String text;
  CostomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter',
          color: Colors.white,
          shadows: [
            Shadow(
              offset: const Offset(-2.0, -2.0),
              color: Colors.deepPurple.withOpacity(0.5),
            ),
            Shadow(
              offset: const Offset(2.0, -2.0),
              color: Colors.deepPurple.withOpacity(0.5),
            ),
            Shadow(
              offset: const Offset(2.0, 2.0),
              color: Colors.deepPurple.withOpacity(0.5),
            ),
            Shadow(
              offset: const Offset(-2.0, 2.0),
              color: Colors.deepPurple.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
