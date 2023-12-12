import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('/splash.png'),
            SizedBox(height: 24),
            Text(
              'Creating a better everyday life \nthe many people.',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 12.8,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
