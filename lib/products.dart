import 'package:flutter/material.dart';
class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover Products",style: TextStyle(color: Colors.white,),),
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu,),),
        actions: [
          Icon(Icons.delete),
          Icon(Icons.person_2_outlined),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discover Products',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              Icon(Icons.manage_search_rounded),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Center(child: Text("Chairs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(child: Text("Sofas",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(child: Text("Tables",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(child: Text("Kitchen",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/images/whitechair.jpg"),
                    
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
