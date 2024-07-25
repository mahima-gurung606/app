import 'package:app/constantlib/constt.dart';
import 'package:app/data/doctors%20data.dart';
import 'package:app/fonts.dart';
import 'package:app/pages/finaldocs.dart';
import 'package:app/pages/hospdetails.dart';
import 'package:app/pages/location.dart';
import 'package:app/pages/medicine.dart';
import 'package:app/pages/patientspage.dart';
import 'package:app/pages/virus.dart';
import 'package:flutter/material.dart';

class DoctorsInfo extends StatelessWidget {
  const DoctorsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PatientsPage()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/pati.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/tttt.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(40)),
                          border: Border.all(color: primaryColor)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: MediaQuery.of(context).size.height * 0.34,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stay Healthy!",
                            style: myStyle(30, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            "Stay Safe!",
                            style: myStyle(25, Colors.black, FontWeight.bold),
                          ),
                          Text(
                              "We are here to help and provide you with all the best health facilities we can"),
                          Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: primaryColor,
                              ),
                              Text(
                                "   Meet Online",
                                style: myStyle(
                                    18, secondaryColor, FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 150,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: myStyle(25, Colors.black, FontWeight.bold),
                    ),
                    Card(
                      child: Text(
                        "See All",
                        style: myStyle(18, Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Hospdetails(),
                        ));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/ambulance.gif"),
                          Text("Ambulance"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Location(),
                        ));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/hospital.gif"),
                          Text("Hospitals"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VirusModel()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/virus.gif"),
                          Text("Virus"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Medicine()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/medicine.gif"),
                          Text("Medicines"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Doctors",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDocs.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) =>
                                DocsDetail(doctorsModel: allDocs[index])));
                      },
                      child: Card(
                        elevation: 4,
                        child: Container(
                          child: Column(
                            children: [
                              Hero(
                                tag: "${allDocs[index].name}",
                                child: CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage:
                                      AssetImage("${allDocs[index].imageUrl}"),
                                ),
                              ),
                              Text(
                                "${allDocs[index].name}",
                                style:
                                    myStyle(22, Colors.black, FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${allDocs[index].speciality}",
                                style: myStyle(
                                  16,
                                  Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "4.7",
                                      style: myStyle(19),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
