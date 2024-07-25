import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';

class DoctorsInfo extends StatelessWidget {
  const DoctorsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ///AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  RichText(
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
                            style:
                                myStyle(20, secondaryColor, FontWeight.bold)),
                        TextSpan(text: "+"),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctors.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: secondaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: MediaQuery.of(context).size.height * 0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/doctor1.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        border: Border.all(color: primaryColor)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
