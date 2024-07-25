import 'package:flutter/material.dart';
class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  double _Value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE68369),
      body:Container(
        margin: EdgeInsets.all(10),
        height: 750,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Playing Now",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        Icon(Icons.queue_music_outlined),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 390,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        image: DecorationImage(image: AssetImage("assets/images/falling.jpg    "),fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cloud 95C",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                        Icon(Icons.favorite,color: Colors.red,),
                      ],
                    ),
                    Text("Flame",style: TextStyle(color: Colors.black26,fontSize: 20),),
                    Slider(activeColor: Colors.pink,
                        value: _Value,max: 100, onChanged:(double val ){
                          setState(() {
                            _Value=val;
                          });
                        }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("3:42",style: TextStyle(color: Colors.black26,fontSize: 20),),
                        Text("4:53",style: TextStyle(color: Colors.black26,fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffE6B9A6),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.shuffle,size: 30,color: Color(0xff667BC6),),
                                  Row(
                                    children: [
                                      Icon(Icons.fast_rewind_sharp,size: 40,color: Color(0xffE0A75E),),
                                      Icon(Icons.pause_circle,size: 70,color: Color(0xff80C4E9),),
                                      Icon(Icons.fast_forward,size: 40,color: Color(0xff9B86BD),),
                                    ],
                                  ),
                                  Icon(Icons.restart_alt,size: 30,color: Color(0xffFFCBCB),),
                                ],
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
