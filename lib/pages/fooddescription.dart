import 'package:app/constantlib/constt.dart';
import 'package:app/pages/food1.dart';
import 'package:flutter/material.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            child: Icon(Icons.arrow_back_ios_new_outlined),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
          ),
          actions: [
            Icon(Icons.favorite_border_outlined),
            Icon(Icons.shopping_basket_rounded),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: AssetImage("assets/images/thukpa.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 100,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Thukpa",
                      ),
                    ],
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("   -  2  +"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Text(
                    " $food",
                    maxLines: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FoodDelivery()));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "  Delivery",
                            style: mystyle(17, Colors.black, FontWeight.bold),
                          ),
                        ],
                      ),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FoodDelivery()));
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Calories",
                                    style: mystyle(
                                        17, Colors.black, FontWeight.bold),
                                  ),
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rating",
                                  style: mystyle(
                                      17, Colors.black, FontWeight.bold),
                                ),
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
              Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Center(
                        child: Text("  \$13.99"),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: Container(
                        height: 30,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Text(
                          "  Add to cart",
                          style: mystyle(16, Colors.black, FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
