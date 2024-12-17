import 'package:fanamdesign_project/features/auth/presentaion/pages/getstart.dart';
import 'package:flutter/material.dart';

class Splash2screen extends StatelessWidget {
  const Splash2screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/images/iPhone 13 & 14 - 25.png',
              fit: BoxFit.cover,
            ),
          ),
          // Text overlay at the top
         
          // Icon button
          Align(
            alignment: Alignment.bottomRight, // Position the icon to the right center
            child: Container(
              margin: EdgeInsets.only(right: 30, bottom: 30), // Custom margin as specified
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(120, 70, 36, 14), // Brownish color with opacity
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) =>Getstartpage()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
