import 'package:app/fonts.dart';
import 'package:app/model/product.dart';
import 'package:flutter/material.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Amazon",
          style: myStyle(25, Colors.black, FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: [
          Icon(
            Icons.menu,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "New Stock",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allProducts.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 30,
                        color: Colors.black,
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
