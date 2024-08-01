import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FickleFlight',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Getting you where you need to go',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white, 
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
