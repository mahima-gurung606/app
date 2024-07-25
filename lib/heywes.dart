import 'package:flutter/material.dart';
class heywes extends StatelessWidget {
  const heywes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 2,blurRadius:5,offset: Offset(0,3),),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("June 28th",style: TextStyle(fontSize: 20,color: Colors.grey),),
                          ],

                        ),
                        SizedBox(height: 9,),
                        Text("Hey Wesley!",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage("assets/images/cartoon.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text("13",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Active",style: TextStyle(color: Colors.white30,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("15",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    Text("Pending"),
                  ],
                ),
                Column(
                  children: [
                    Text("21",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    Text("Completed"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/images/snow11.jpg"),fit: BoxFit.cover),
                  
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("12",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text("Enrolled",style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.withOpacity(0.8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text("How to grow your",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                Text("Facebook Page",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),
                            Icon(Icons.favorite_border_outlined,size: 40,color: Colors.white,),
                          ],

                        ),
                        Text("Follow these easy and",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),

                  ),
                  Text("simple steps",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),

            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
