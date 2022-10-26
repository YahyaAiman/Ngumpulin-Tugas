import 'package:flutter/material.dart';
import 'package:tugas4/model.dart';

class DetailPage extends StatelessWidget {
  final ModelMouse modelMouse;
  const DetailPage({super.key, required this.modelMouse});

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
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Row(
              children: [
                Expanded(child: Image.asset(modelMouse.img)),
                Expanded(
                  child: SizedBox(
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          modelMouse.brand,
                          style: const TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                        Text(modelMouse.seri,
                            style: const TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w600)),
                        const SizedBox(height: 11),
                        Text.rich(TextSpan(children: <InlineSpan>[
                          const WidgetSpan(
                              child: Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          )),
                          TextSpan(
                              text: "${modelMouse.rating}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ])),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(top: 10),
              color: Colors.black45,
              width: 420,
              child: Text(
                modelMouse.descripsions,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade100,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}
