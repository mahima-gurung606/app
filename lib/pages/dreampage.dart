import 'package:app/data/dataforbook.dart';
import 'package:app/fonts.dart';
import 'package:flutter/material.dart';

class Dreampage extends StatefulWidget {
  const Dreampage({super.key});

  @override
  State<Dreampage> createState() => _DreampageState();
}

class _DreampageState extends State<Dreampage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "The Girl of my Dreams",
          style: myStyle(23, Colors.black, FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                //physics: NeverScrollableScrollPhysics(),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("${allBooks[index].imageUrl}"),
                            fit: BoxFit.contain)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${allBooks[index].bookName}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${allBooks[index].author}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${allBooks[index].genre}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${allBooks[index].publishdate}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${allBooks[index].review}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${allBooks[index].rating}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: allBooks.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "${allBooks[index].imageUrl}"),
                                    fit: BoxFit.contain)),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "${allBooks[index].bookName}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${allBooks[index].author}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${allBooks[index].genre}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${allBooks[index].publishdate}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${allBooks[index].review}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${allBooks[index].rating}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
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
