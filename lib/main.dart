import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  var b = Colors.black;
  var w = Colors.white;
  var mycontroller = TextEditingController();
  var name = " ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Esm Omk Eh?",
            style:
                TextStyle(color: w, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: b,
        ),
        body: Container(
            color: w,
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: TextField(
                        style: TextStyle(color: b),
                        controller: mycontroller,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: b)),
                            labelText: "First Brother Name",
                            labelStyle: TextStyle(fontSize: 15, color: b),
                            hintText: "إسم الأخ الأول",
                            hintStyle: TextStyle(fontSize: 20, color: b),
                            icon: Icon(
                              Icons.person,
                              color: b,
                            )),
                        keyboardType: TextInputType.text,
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: TextField(
                        style: TextStyle(color: b),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: b)),
                            labelText: "Your Name",
                            labelStyle: TextStyle(fontSize: 15, color: b),
                            hintText: "إسمك",
                            hintStyle: TextStyle(fontSize: 20, color: b),
                            icon: Icon(
                              Icons.person,
                              color: b,
                            )),
                        keyboardType: TextInputType.text,
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          name = name == " "
                              ? "ام " + mycontroller.text
                              : name = " ";
                        });
                      },
                      color: b,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      highlightColor: w,
                      child: Text("النتـيجة",
                          style: TextStyle(color: w, fontSize: 30))),
                  Container(
                    child: Text(
                      "إسم امك هو: $name",
                      style: TextStyle(fontSize: 30, color: b),
                    ),
                  ),
                  SizedBox(height: 20),
                ]))),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.invert_colors_on,
            color: w,
          ),
          backgroundColor: b,
          onPressed: () {
            setState(() {
              b = b == Colors.black ? Colors.white : Colors.black;
              w = w == Colors.white ? Colors.black : Colors.white;
            });
          },
        ),
      ),
    );
  }
}
