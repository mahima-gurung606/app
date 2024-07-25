import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CustomeSlider extends StatefulWidget {
  const CustomeSlider({super.key});

  @override
  State<CustomeSlider> createState() => _CustomeSliderState();
}

class _CustomeSliderState extends State<CustomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xfffdc5f5),
        body:  Container(
            height: 750,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
            ),
            child: Container(
                margin: EdgeInsets.all(10),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              image: DecorationImage(image: AssetImage('assets/images/mahima.jpg'),),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.filter_list),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Hello, Ari',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.waving_hand,color: Colors.yellow,),
                                    ],
                                  ),
                                  Text('What you want to hear today?'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink[300],
                                    ),
                                    child: Icon(Icons.search_rounded,color: Colors.white,size: 35,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40,),
                          SizedBox(width: 20,),
                          Text('ALBUMS',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image:DecorationImage(image:AssetImage('  assets/images/tupac.jpg',),fit: BoxFit.cover)
                                ),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.all(5),
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:Colors.grey,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Clouds'),
                                              Text('Brain Sarubi'),
                                            ],

                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.play_circle,color: Colors.pinkAccent,size: 35,)
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ) ,
                              ),
                              Container(
                                height: 160,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image:DecorationImage(image: AssetImage("assets/images/drake.jpg"),),
                                ),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.all(5),
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:Colors.grey,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Clouds'),
                                              Text('Brain Sarubi'),
                                            ],

                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.play_circle,color: Colors.pinkAccent,size: 35,)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text('RECENTLY PLAYED'),
                          SizedBox(height: 15),
                          Container(
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(5),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(image: AssetImage("assets/images/caset.jpg"),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Chained down',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Teddy Mill')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('4:53'),
                                        SizedBox(width: 20,),
                                        Icon(Icons.favorite,color: Colors.red,),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(5),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(image: AssetImage("assets/images/drum.jpg"),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Magic Wonder',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Floyd Bone')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('4:53'),
                                        SizedBox(width: 20,),
                                        Icon(Icons.favorite_border),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(5),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(image: AssetImage("assets/images/tylor.jpg"),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Social Summer',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Gary Waters')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('4:53'),
                                        SizedBox(width: 20,),
                                        Icon(Icons.favorite_border),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(5),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(image: AssetImage('assets/images/oicc.jpg'),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Airy Daylight',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Artur Swit')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('4:53'),
                                        SizedBox(width: 20,),
                                        Icon(Icons.favorite_border),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}