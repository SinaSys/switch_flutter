import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Switch")),
        body: Switch(
          value: isSwitched,
          onChanged: (bool value) {
            setState(() {
              isSwitched = value;
              print(value);
            });
          },
          activeColor: Colors.redAccent,
          activeTrackColor: Colors.blueAccent,
          inactiveTrackColor: Colors.black,
        ));
  }
}
