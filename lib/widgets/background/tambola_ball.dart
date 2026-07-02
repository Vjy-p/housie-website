import 'package:flutter/material.dart';

class TambolaBall extends StatelessWidget {
  const TambolaBall({super.key, required this.number, required this.size});

  final int number;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.white.withOpacity(.18),
            Colors.white.withOpacity(.05),
          ],
        ),
        border: Border.all(color: Colors.white.withOpacity(.18)),
        boxShadow: [
          BoxShadow(color: Colors.white.withOpacity(.05), blurRadius: 20),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        number.toString().padLeft(2, "0"),
        style: TextStyle(
          color: Colors.white.withOpacity(.45),
          fontWeight: FontWeight.bold,
          fontSize: size * .28,
        ),
      ),
    );
  }
}
