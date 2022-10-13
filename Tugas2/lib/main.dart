import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: "Tugas 2 Flutter"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 12.0;
  bool isVisible = false;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  void _isVisible() {
    setState(() {
      _counter++;
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isVisible
                ? Text('Sambo',
                    style: TextStyle(fontSize: _counter, color: Colors.white))
                : Text("Yahya",
                    style: TextStyle(fontSize: _counter, color: Colors.white)),
            Text(
              'Membesarrrr',
              style: TextStyle(
                  fontSize: _counter, color: Colors.lightBlue.shade200),
            ),
            Text('Ukuran Font= $_counter')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isVisible,
        tooltip: 'Increment',
        child: const Icon(Icons.account_circle_rounded),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
