import 'package:app/constantlib/constt.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';

class PharmacyDetails extends StatelessWidget {
  List allDavai;
  PharmacyDetails({super.key, required this.allDavai});

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
            Container(
              height: 50,
              width: 400,
              color: primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Medicines  +",
                    style: myStyle(30, Colors.white),
                  ),
                ],
              ),
            ),
            Text(
              "List of Medicine Available",
              style: myStyle(23, secondaryColor, FontWeight.bold),
            ),
            Text(
              "💊",
              style: myStyle(25),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: allDavai.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 300),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        height: 120,
                        width: 120,
                        color: Colors.black,
                        child: Image(
                          image: AssetImage('${allDavai[index].imageUrl}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "${allDavai[index].name}",
                      style: myStyle(20, Colors.black, FontWeight.bold),
                    ),
                    Text(
                      "${allDavai[index].quantity}",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${allDavai[index].rating}"),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
