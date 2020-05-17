import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget drawer2(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  double heightAppBarStatus = MediaQuery.of(context).padding.top + kToolbarHeight;

  return Container(

      margin: EdgeInsets.only(top: heightAppBarStatus),
      width: width < 650 ? MediaQuery.of(context).size.width * 0.80 : MediaQuery.of(context).size.width * 0.33,
      child: Stack(
        children: <Widget>[

          ListView(
            // This padding to let the color of tool bar will be same color of menu bar's color
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: ListTile(
                        title: Text("Hello world"),
                        leading: Icon(Icons.wb_cloudy),
                        onTap: (){
                          Navigator.pop(context);
                          print("hello world");
                        },
                      ),
                    ),

                    SizedBox(height: 5,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: ListTile(
                        title: Text("second page"),
                        leading: Icon(Icons.person),
                        onTap: (){
                          Navigator.pop(context);
                          print("second page");
                        },
                      ),
                    ),

                    SizedBox(height: 5,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: ListTile(
                        title: Text("Thired page"),
                        leading: Icon(Icons.print),
                        onTap: (){
                          Navigator.pop(context);
                          print("Thired page");
                        },
                      ),
                    ),

                    SizedBox(height: 5,),

                  ],
                ),
              ),
            ],
          ),

        ],
      ),
  );
}