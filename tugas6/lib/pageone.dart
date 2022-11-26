import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas6/pagetwo.dart';

class PageOne extends StatefulWidget {
  PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final Future<SharedPreferences> _preferences =
      SharedPreferences.getInstance();

  bool _isDone = false;

  void setIsDone() async {
    final SharedPreferences pref = await _preferences;
    setState(() {
      _isDone = !_isDone;
    });
    pref.setBool('isDone', _isDone);
  }

  void getIsDone() async {
    final SharedPreferences pref = await _preferences;
    setState(() {
      _isDone = pref.getBool('isDone') ?? _isDone;
    });
    if (_isDone) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PageTwo()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getIsDone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setIsDone();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageTwo(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 75, 57, 239)),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
