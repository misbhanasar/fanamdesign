










import 'package:fanamdesign_project/features/auth/presentaion/pages/splash1.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Splash1Screen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splash1Screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'asset/images/iPhone 13 & 14 - 1 (1).png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';

// class LogoScreen extends StatefulWidget {
//   const LogoScreen({super.key});

//   @override
//   State<LogoScreen> createState() => _LogoScreenState();
// }

// class _LogoScreenState extends State<LogoScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Navigate to the next screen after 5 seconds
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Splash1Screen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Image.asset(
//           'asset/images/iPhone 13 & 14 - 1 (1).png',
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class Splash1Screen extends StatelessWidget {
//   const Splash1Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Positioned.fill(
//             child: Image.asset(
//               'asset/images/iPhone 13 & 14 - 24.png',
//               fit: BoxFit.cover,
//             ),
// //           ),
//           Align(
//             alignment: Alignment.centerRight, // Center the icon
//             child: Container(
//               margin:EdgeInsets.only(right: 100,top: 100),
//               width: 60,
//               height: 60,
//               decoration: BoxDecoration(
                
//                 color: const Color.fromARGB(120, 84, 57, 39),
//                 shape: BoxShape.circle,
                
//               ),
              
//               clipBehavior: Clip.hardEdge,
//               child: Center(
//                 child: IconButton(onPressed: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Splash1Screen()));
//                 },
//                  icon: Icon(Icons.arrow_forward,color: Colors.white,)),
//                 child: Icon(
//                   Icons.arrow_forward_outlined,
//                   color: Colors.white,
//                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
