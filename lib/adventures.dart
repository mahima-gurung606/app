import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class travel extends StatelessWidget {
  const travel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.chevron_left),
                    Text("Bali Experince",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Edit", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),

                //images
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height:250,
                      width: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/image/bestplacebali.png"),
                          fit: BoxFit.cover, // This ensures the image covers the entire container

                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.favorite,color: Colors.red,),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: MediaQuery.of(context).size.height *0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),

                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Epic Trip Bali, indonesia"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star),
                                              Text("4.8(12k)", style: TextStyle(fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Best Place Bali",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Adventure from ubud to Nusa Penida.."),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.attach_money_outlined,size: 20,),
                                              Text("700",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text("per day"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),



                              ),
                            ],
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height:250,
                      width: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/image/unknownbali.png"),
                          fit: BoxFit.cover, // This ensures the image covers the entire container

                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.favorite,color: Colors.red,),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: MediaQuery.of(context).size.height *0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Epic Trip Bali, indonesia"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star),
                                              Text("4.1(10k)", style: TextStyle(fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Discover Hidden Gem Bali",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Discover new advencture with our profe"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.attach_money_outlined,size: 20,),
                                              Text("900",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text("per day"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),



                              ),
                            ],
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}