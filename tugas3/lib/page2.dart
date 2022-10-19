import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd1edbf),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Image.asset(
            "assets/icon/dalasi.png",
            alignment: Alignment.centerRight,
            scale: 15,
          ),
        ),
        title: const Text(
          "Dayzer",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(90, 17, 90, 14),
              child: const Text(
                "To simplify the way you work",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.asset(
                "assets/icon/pg2.png",
                scale: 2.5,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Controling deliveries in \nreliable and no-hastle way",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: SizedBox(
                height: 50,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.black,
                      ),
                    ),
                    child: const Text(
                      "Get free trial",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
