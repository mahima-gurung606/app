import 'package:app/data/books.dart';
import 'package:flutter/material.dart';

class Bookpage extends StatelessWidget {
  const Bookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 100,
            ),
            ListView.builder(
              itemCount: allBooks.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${allBooks[index].imageUrl}"),
                          fit: BoxFit.contain)),
                  color: Colors.purpleAccent,
                  child: Column(
                    children: [
                      Text(
                        "${allBooks[index].bookName}",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
