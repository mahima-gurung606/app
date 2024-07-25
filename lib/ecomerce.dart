import 'package:app/ecomercetext.dart';
import 'package:flutter/material.dart';
class ecomerce2 extends StatelessWidget {
  const ecomerce2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Icon(Icons.favorite_border_outlined),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/bluechair.jpg", width: 300),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey, width: 4)
                            ),
                            child: Image.asset("assets/images/mychair.jpg",
                                width: 90),
                          ),
                          Image.asset("assets/images/mychair.jpg", width: 90),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red[400], size: 30,),
                        Text("4.8", style: TextStyle(fontSize: 20, color: Colors
                            .red[400], fontWeight: FontWeight.bold),),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          // color: Colors.grey,
                          child: Text("145 reviews", style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),

              // paragraph
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Leset Galant",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight
                              .bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            // color: Colors.blue,
                            shape: BoxShape.circle,
                          ),

                          child: Icon(Icons.circle, color: Colors.blueGrey,
                            size: 20,),

                        ),
                        Icon(Icons.circle, color: Colors.lightGreen, size: 20),
                      ],
                    ),
                  ],

                ),

              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("$ecom", style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),


              Container(
                height: 90,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money, size: 30,),
                          Text("64.00", style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("Add to cart", style: TextStyle(
                                color: Colors.white, fontSize: 16),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
