import 'package:app/constantlib/constt.dart';
import 'package:app/data/hospitallocation.dart';
import 'package:app/fonts.dart';
import 'package:app/pages/detailhosp.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              //width: MediaQuery.of(context).size.width * 0.7,
              width: double.infinity,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allLocation.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MoreDetails(
                          locationModel: allLocation[index],
                        ),
                      ));
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${allLocation[index].imageUrl}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${allLocation[index].name}",
                                    style: myStyle(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "${allLocation[index].number}",
                                    style: myStyle(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  Text(
                                    "${allLocation[index].location}",
                                    style: myStyle(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("${allLocation[index].rating}"),
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
            ),
          ],
        ),
      ),
    );
  }
}
