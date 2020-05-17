import 'package:drawer/page2.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'drawer2.dart';

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
        title: Text("Drawer"),
      ),
      endDrawer: Container(
          child: drawer(context)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward
        ),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => page2()
            ),
          );
        },
      ),
    );
  }
}