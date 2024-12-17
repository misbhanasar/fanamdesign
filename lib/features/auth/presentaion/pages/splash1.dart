import 'package:fanamdesign_project/features/auth/presentaion/pages/splash2screen.dart';

import 'package:flutter/material.dart';

class Splash1Screen extends StatelessWidget {
  const Splash1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/images/iPhone 13 & 14 - 24.png',
              fit: BoxFit.cover,
            ),
          ),
          // Text overlay at the top
          Positioned(
            top: 50, // Adjust this value to place the text at the desired height
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Designs\nEveryday", // First line of text
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal, // Text color
                    fontSize: 28, // Font size
                    // Bold text
                  ),
                ),
                SizedBox(height: 8), // Space between lines
                Text(
                  "Shopee adds new designs every day. Explore and find the best embroidery for your loved ones.",
                  style: TextStyle(
                    color: Colors.white, // Lighter text color
                    fontSize: 16, // Smaller font size
                  ),
                ),
               
              ],
            ),
          ),
          // Icon button
          Align(
            alignment: Alignment.centerRight, // Position the icon to the right center
            child: Container(
              margin: EdgeInsets.only(right: 100, top: 100), // Custom margin as specified
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(120, 84, 57, 39), // Brownish color with opacity
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => Splash2screen()),
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
