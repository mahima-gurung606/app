import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Hospdetails extends StatelessWidget {
  const Hospdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back),
                    height: 50,
                    width: 50,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "                  Doc",
                    style: myStyle(
                      20,
                      primaryColor,
                      FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: "Time",
                          style: myStyle(20, secondaryColor, FontWeight.bold)),
                      TextSpan(text: "+"),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                  height: 400,
                  width: 400,
                  child: Lottie.asset("assets/animations/ambulance.json")),
            ),
            Card(
              elevation: 7,
              color: Colors.black,
              child: Card(
                elevation: 7,
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                    child: Card(
                      elevation: 4,
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          Text(
                            "     Emergency Call",
                            style: myStyle(25, Colors.black, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
