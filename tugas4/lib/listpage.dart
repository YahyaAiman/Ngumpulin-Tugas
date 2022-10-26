import 'package:flutter/material.dart';
import 'package:tugas4/detail.dart';
import 'package:tugas4/model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        centerTitle: true,
        title: const Text(
          "Valorant Mouse",
          style: TextStyle(fontFamily: 'valo'),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listModelMouse.length,
              itemBuilder: (context, index) {
                final item = listModelMouse[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(modelMouse: item),
                      )),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      top: 60,
                      bottom: 320,
                    ),
                    width: 200,
                    height: 250,
                    child: Column(
                      children: [
                        Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.indigo.withOpacity(0.8),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Image.asset(item.img)),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade200,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(3, 20),
                                    blurRadius: 40,
                                    color: Colors.blueAccent.withOpacity(0.5))
                              ]),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "${item.brand}\n".toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: item.seri,
                                    style: const TextStyle(color: Colors.black))
                              ])),
                        )
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
