
import 'package:fanamdesign_project/features/auth/presentaion/pages/signup/sign/loginpage.dart';
import 'package:flutter/material.dart';

class Getstartpage extends StatelessWidget {
  const Getstartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/images/iPhone 13 & 14 - 26.png',
              fit: BoxFit.cover,
            ),
          ),
          
          // Text overlay at the top
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.only(top: 200,),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Text(
                      "THE CREATIVE APP THAT MAKES YOUR\nLOOK DIFFERENT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(213, 63, 27, 3), 
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),


                  // "Let's Get Started" Button


                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color.fromARGB(120, 70, 36, 14),
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "LET'S GET STARTED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),


                  // Description Text

                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "\"Discover a world of exquisite \n embroidered shoes and captivating\n images, crafted to elevate your style and \n space with every purchase.\"",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color:  Color.fromARGB(213, 63, 27, 3), 
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        
          
        ],
      ),
    );
  }
}
