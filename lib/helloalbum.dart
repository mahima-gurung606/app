import 'package:flutter/material.dart';

class Insert extends StatelessWidget {
  const Insert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff088395),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(image: AssetImage('assets/images/mahima.jpg')),
                    ),
                  ),
                  Icon(Icons.filter_list,size: 25,),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(' Hello Ari',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Icon(Icons.front_hand_rounded,color: Colors.yellow,),
                    )
                  ],
                ),
                Text('What you want to hear today?'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('ALBUMS'),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/myfav.jpg'),),
                    ),
                    height: 120,
                    width: 120,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/voilen.jpg'),),
                    ),
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('RECENTLY PLAYED',style: TextStyle(fontSize: 15,color:Colors.black ),),
            SizedBox(height: 15,),
            Container(
              color: Colors.grey[100],
              child: Row(
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
                          image: DecorationImage(image: AssetImage("assets/images/caset.jpg "),fit: BoxFit.cover,),
                          )
                        ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Chained down",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Teddy Milli"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('4:53'),
                    SizedBox(width: 20,),
                    Icon(Icons.favorite_border,color: Colors.purpleAccent,),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(3),
                            padding: EdgeInsets.all(3),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("assets/images/falling.jpg"),fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text("Magic Wonder",style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Floyd Bone'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("4:53"),
                          SizedBox(width: 20,),
                          Icon(Icons.favorite_border,color: Colors.purpleAccent,),

                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey[200],
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
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("assets/images/caset.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Social Summer",style: TextStyle(color: Colors.black,),),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
