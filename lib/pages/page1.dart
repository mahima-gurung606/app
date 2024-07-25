import 'package:app/data/product%20model.dart';
import 'package:app/model/product.dart';
import 'package:flutter/material.dart';

class Clothstore extends StatefulWidget {
  ModelClass modelClass;
  Clothstore({
    super.key,
    required this.modelClass,
  });

  @override
  State<Clothstore> createState() => _ClothstoreState();
}

class _ClothstoreState extends State<Clothstore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.modelClass.productName}"),
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                //physics: BouncingScrollPhysics(),
                itemCount: allProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
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
                            image: AssetImage("${allProducts[index].imgUrl}"),
                            fit: BoxFit.cover),
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
                          SizedBox(
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: allProducts.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(10),
                                  height: 200,
                                  width: double.infinity,
                                  color: Colors.deepPurple,
                                  child: Column(
                                    children: [
                                      Text(
                                        "${allProducts[index].productName}",
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: Image.asset(
                                          "${allProducts[index].imgUrl}",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text("${allProducts[index].review}"),
                                      Text("${allProducts[index].rating}"),
                                      Text("${allProducts[index].price}"),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
