import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:app/model/abouthospital.dart';
import 'package:flutter/material.dart';

class MoreDetails extends StatelessWidget {
  LocationModel locationModel;
  MoreDetails({super.key, required this.locationModel});

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
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 390,
                  child: Image(
                    image: AssetImage("${locationModel.imageUrl}"),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "${locationModel.location}",
                  style: myStyle(18),
                ),
                Text(
                  "${locationModel.number}",
                  style: myStyle(20),
                ),
              ],
            ),
            Text("${locationModel.titleName}"),
            Padding(
              padding: const EdgeInsets.all(9),
              child: Text(
                "${locationModel.aboutImageUrll}",
                style: myStyle(18, Colors.black, FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
