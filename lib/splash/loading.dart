import 'dart:async';

import 'package:app/pages/docshome.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (builder) => DoctorsInfo())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            child: Column(
              children: [
                Lottie.asset("assets/animations/load.json"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
