import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffd3f36b),
        appBar: AppBar(
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 40,
              height: 40,
              color: Colors.white,
              child: Image.asset("assets/icon/tiles.png", scale: 20),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
          backgroundColor: const Color(0xffd3f36b),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 5),
          child: Column(children: [
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: "Market "),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.monitor_heart,
                        size: 60,
                      )),
                  TextSpan(text: "\nyour growth\n"),
                  TextSpan(text: "strategy"),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1d1d1d)),
            ),
            const SizedBox(height: 20),
            Image.asset("assets/icon/test.png"),
            const SizedBox(height: 20),
            SizedBox(
              width: 190,
              height: 45,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: ElevatedButton.icon(
                  label: const Icon(
                    Icons.arrow_circle_right,
                    size: 43,
                  ),
                  icon: const Text(
                    'Get started    ',
                    style: TextStyle(fontSize: 21),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff1d1d1d),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
