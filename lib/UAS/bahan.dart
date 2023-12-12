import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  final String img;
  final String nama;

  const Kartu({super.key, required this.img, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          img,
          height: 90,
        ),
        SizedBox(height: 6),
        Text(
          nama,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff1B1B1B),
          ),
        )
      ],
    );
  }
}

