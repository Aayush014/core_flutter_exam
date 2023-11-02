import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
       const Duration(seconds: 5),
          () {
        Navigator.of(context).pushReplacementNamed('home'
        );
      },
    );
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff1E5F74),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('Assets/Images/calculator.png'),
              ),
              const Column(
                children: [
                  Text("Multiplication",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                  Text("Table Generator",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
                ],
              ),

            ],
          ),
          const Spacer(),
          Text(
            "AKP's Work",
            style: GoogleFonts.croissantOne(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    ));
  }
}
