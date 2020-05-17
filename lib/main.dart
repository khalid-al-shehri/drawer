import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hidden Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: app(),
    );
  }
}



class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      endDrawer: Container(
          child: drawer(context)
      ),
    );
  }
}