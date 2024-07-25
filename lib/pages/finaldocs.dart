import 'package:app/constantlib/constt.dart';
import 'package:app/data/doctors%20data.dart';
import 'package:app/fonts.dart';
import 'package:app/model/doctors_model.dart';
//import 'package:app/pages/hospitalaround.dart';
import 'package:flutter/material.dart';

class DocsDetail extends StatelessWidget {
  DoctorsModel doctorsModel;

  DocsDetail({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: myStyle(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(
                text: "Doc",
              ),
              TextSpan(
                text: "Time",
                style: myStyle(26, secondaryColor, FontWeight.bold),
              ),
              TextSpan(text: "+"),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Hero(
                  tag: "${doctorsModel.name}",
                  child: Image.asset('${doctorsModel.imageUrl}')),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 450,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${doctorsModel.name}",
                        style: myStyle(20, Colors.black, FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "${doctorsModel.payment}",
                        style: myStyle(15, secondaryColor, FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${doctorsModel.speciality}',
                        style: myStyle(20, Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      Text(
                        "About Doctor",
                        style: myStyle(20, primaryColor, FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [Text("${doctorsModel.aboutDoc}")],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 4,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_2_outlined,
                                  color: Colors.black),
                              Text(
                                "Patients",
                                style:
                                    myStyle(10, Colors.black, FontWeight.bold),
                              ),
                            ],
                          ),
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 22,
                              color: Colors.black,
                            ),
                            Text(
                              "  Experience",
                              style: myStyle(9, Colors.black, FontWeight.bold),
                            )
                          ],
                        ),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "  Rating",
                              style: myStyle(10, Colors.black, FontWeight.bold),
                            )
                          ],
                        ),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.69,
                    // width: MediaQuery.of(context).size.width * 0.61,
                    child: ListView.builder(
                      itemCount: allDocs.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 60,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Card(
                                      elevation: 4,
                                      child: Column(
                                        children: [
                                          Text(
                                            '${doctorsModel.appointmentTime[index]}',
                                            style: myStyle(20, Colors.black,
                                                FontWeight.bold),
                                          ),
                                          Text(
                                            '${doctorsModel.appointmentDays[index]}',
                                            style: myStyle(15, Colors.black,
                                                FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
