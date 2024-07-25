import 'package:app/data/whatsappdata.dart';
import 'package:app/pages/finalpage.dart';
import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
            "WhatsApp Texts",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                itemCount: messages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => Finalpage(
                                whatsApp: messages[index],
                              )));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "${messages[index].imageUrl}"),
                                    fit: BoxFit.cover),
                                color: Colors.blueGrey,
                              ),
                            ),
                            title: Text(
                              "${messages[index].name}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${messages[index].chats}",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            trailing: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ),
                          ),
                          Divider(
                            height: 15,
                            thickness: 4,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
