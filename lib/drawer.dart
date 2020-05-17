import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget drawer(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  double heightAppBarStatus = MediaQuery.of(context).padding.top + kToolbarHeight;

  return Container(
//    margin: EdgeInsets.only(top: heightAppBarStatus),
      decoration: BoxDecoration(
          color: Colors.grey[200]
      ),
      width: width < 650 ? MediaQuery.of(context).size.width * 0.80 : MediaQuery.of(context).size.width * 0.33,
      child: SafeArea(
        child: Stack(
          children: <Widget>[

            ListView(
              // This padding to let the color of tool bar will be same color of menu bar's color
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      ListTile(
                        title: Text("Hello world"),
                        leading: Icon(Icons.wb_cloudy),
                        onTap: (){
                          Navigator.pop(context);
                          print("hello world");
                        },
                      ),

                      Container(color: Colors.grey.withOpacity(0.30), height: 1),

                      ListTile(
                        title: Text("second page"),
                        leading: Icon(Icons.person),
                        onTap: (){
                          Navigator.pop(context);
                          print("second page");
                        },
                      ),

                      Container(color: Colors.grey.withOpacity(0.30), height: 1),

                      ListTile(
                        title: Text("Thired page"),
                        leading: Icon(Icons.print),
                        onTap: (){
                          Navigator.pop(context);
                          print("Thired page");
                        },
                      ),

                      Container(color: Colors.grey.withOpacity(0.30), height: 1),

                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      )
  );
}