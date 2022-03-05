// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Template2 extends StatelessWidget {
  PickedFile? imgFile;
  List controllers;

  Template2(this.controllers, this.imgFile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Template_2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 70, width: 400), //Gives a certain padding from top
            Container(
              width: 400,
              height: 35,
              child: Center(
                child: Text(controllers[0], //Name
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),
            Center(
              child: Container(
                height: 20,
                width: 130,
                child: Center(
                  child: Text(controllers[5], //Position
                      style: TextStyle(fontSize: 14, color: Colors.yellow)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 70,
                width: 400,
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 45, top: 10),
                    child: Container(
                      width: 70,
                      height: 10,
                      child: Center(
                        child: Text(controllers[2], //Address
                            style:
                                TextStyle(fontSize: 10, color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Container(
                      width: 120,
                      height: 10,
                      child: Center(
                        child: Text('   ' + controllers[1], //Phone
                            style:
                                TextStyle(fontSize: 10, color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: 136,
                      child: Center(
                        child: Text(controllers[3], //Email
                            style: TextStyle(fontSize: 9, color: Colors.white)),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                children: [
                  Container(
                    height: 158,
                    width: 150,
                    child: Center(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: FileImage(
                            File(imgFile!.path)), //Selected image from user
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    height: 220,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'College',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 36, 45, 62),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          controllers[7],
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 148, 158, 104),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          'CGPA: ' + controllers[10], //College CGPA
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          'Secondry High School',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 36, 45, 62),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          controllers[8], //Class Twelve School name
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 148, 158, 104),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          'Percentage: ' +
                              controllers[11], //Class 12 Percentage
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          'High School',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 36, 45, 62),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          controllers[9], //Class 10 school name
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 148, 158, 104),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          'Percentage: ' + controllers[12], //Tenth percentage
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 33,
                  ),
                  Container(
                      height: 135,
                      width: 143,
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(controllers[25], //Language 1
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('Professional working proficency',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(controllers[26], // Language 2
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('Native or bilingual proficency',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 105,
                    width: 242,
                    child: Center(
                      child: Text(controllers[4], //About
                          style: TextStyle(fontSize: 9, color: Colors.black)),
                    ),
                  ),
                  Container(
                    height: 33,
                    width: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          width: 238,
                          child: Text(controllers[13], //Project Heading 1
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 90,
                          width: 200,
                          child: Text(
                              controllers[14], //Desciption of project heading 1
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black)),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Container(
                          height: 24,
                          width: 238,
                          child: Text(controllers[15], //Project heading 2
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 90,
                          width: 200,
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                              controllers[16], //Desciption of project heading 2
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 33,
                    width: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 242,
                    child: Text(controllers[19], //Skill 1
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 242,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int a = 0; //HackerRank star of Skill 1
                              a < double.parse(controllers[22]);
                              a++)
                            Icon(Icons.star,
                                color: Color.fromARGB(255, 165, 159, 107)),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 242,
                    child: Text(controllers[20], //Skill 2
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 242,
                    child: Row(
                      children: [
                        //HackerRank star of Skill 2
                        for (int a = 0; a < double.parse(controllers[23]); a++)
                          Icon(Icons.star,
                              color: Color.fromARGB(255, 165, 159, 107)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 242,
                    child: Text(controllers[21], //Skill 3
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 242,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //HackerRank star of Skill 3
                          for (int a = 0;
                              a < double.parse(controllers[24]);
                              a++)
                            Icon(Icons.star,
                                color: Color.fromARGB(255, 165, 159, 107)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ])
        ],
      ),
    );
  }
}
