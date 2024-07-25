import 'package:app/model/product.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Amazon",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: [
            Icon(Icons.menu),
          ],
        ),
        body: SingleChildScrollView(
            //physics: NeverScrollableScrollPhysics(),
            physics: BouncingScrollPhysics(),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  //physics: BouncingScrollPhysics(),
                  itemCount: allProducts.length,
                  shrinkWrap: true,

                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 200,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                    AssetImage("$allProducts[index].imageUrl"),
                                fit: BoxFit.contain),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${allProducts[index].productName}",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${allProducts[index].price}",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${allProducts[index].rating}",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allProducts.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  "${allProducts[index].imgUrl}",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "${allProducts[index].productName}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("${allProducts[index].review}"),
                                      Text(
                                        "${allProducts[index].rating}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ])));
  }
}
