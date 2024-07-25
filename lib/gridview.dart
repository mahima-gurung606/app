import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View",
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blueGrey,
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
