import 'package:flutter/material.dart';
import 'drawer2.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer 2"),
      ),
      endDrawer: Container(
          child: drawer2(context)
      ),
    );
  }
}
