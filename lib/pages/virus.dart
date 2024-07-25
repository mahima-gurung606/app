import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';

class VirusModel extends StatelessWidget {
  const VirusModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: "Doc",
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 250,
                width: 400,
                color: Colors.green,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/images/covid.jpg"),
                      fit: BoxFit.cover,
                      height: 250,
                      width: 800,
                    ),
                  ],
                ),
              ),
              Text(
                "$corona",
                style: myStyle(19),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(15)),
                  Image(
                    image: AssetImage("assets/images/covid1.jpg"),
                    fit: BoxFit.cover,
                    height: 250,
                    width: 800,
                  )
                ],
              ),
              Text(
                "$covid",
                style: myStyle(19),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
