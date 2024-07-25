import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({super.key});

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
      body: Column(
        children: [
          Row(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  height: 250,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor,
                      image: DecorationImage(
                        image: AssetImage("assets/images/pati.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Text(
                "Name: Natasha tyla",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 15,
            child: Container(
              height: 40,
              width: 430,
              color: Colors.lightGreen,
              child: Center(
                child: Text(
                  "Patients Page",
                  style: myStyle(
                    21,
                    Colors.black,
                    FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Text(
                "Gender : female",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              Text(
                "Age : 34",
                style: myStyle(19, Colors.black, FontWeight.bold),
              ),
              Text(
                "Blood Group: A+",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              Text(
                "Height : 5.5ft",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              Text(
                "Contact No: 77359852",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
