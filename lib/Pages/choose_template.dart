// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Templates/template1.dart';
import '../Templates/template2.dart';
import '../Templates/template3.dart';

class Template extends StatelessWidget {
  PickedFile? imgFile;
  List<String> controllers;
  Template(this.controllers, this.imgFile);
//This file controlls the templates. The tempales ae in a grid view with crossAxisCount = 1
//The templates are present in the assets folder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Template")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
            child: RaisedButton(
              child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/Template_1.jpeg"),
                        fit: BoxFit.fitWidth),
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Template1(controllers, imgFile)));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
            child: RaisedButton(
              child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/Template_2.jpg"),
                        fit: BoxFit.fitWidth),
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Template2(controllers, imgFile)));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
            child: RaisedButton(
              child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/Template_3.jpg"),
                        fit: BoxFit.fitWidth),
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Template3(controllers, imgFile)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
