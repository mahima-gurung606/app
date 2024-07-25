import 'package:app/constantlib/constt.dart';
import 'package:app/data/davaiiiiii.dart';
import 'package:app/data/medicallist.dart';
import 'package:app/fonts.dart';
import 'package:app/pages/aboutdavai.dart';
import 'package:flutter/material.dart';

class Medicine extends StatelessWidget {
  const Medicine({super.key});

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
      body: ListView.builder(
        itemCount: allMedicine.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PharmacyDetails(
                        allDavai: allDavai[index],
                      )));
            },
            child: Card(
              elevation: 4,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "${allMedicine[index].name}",
                          style: myStyle(20),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("${allMedicine[index].imageUrl}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "${allMedicine[index].location}",
                      style: myStyle(20, Colors.black, FontWeight.bold),
                    ),
                    Text("${allMedicine[index].phoneNumber}"),
                    Text("${allMedicine[index].rating}"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
