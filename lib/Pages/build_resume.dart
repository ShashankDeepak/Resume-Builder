// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unnecessary_null_comparison, non_constant_identifier_names, avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'choose_template.dart';

class BuildResume extends StatefulWidget {
  // The entry fields is controlled by this file

  Function signOff; //Funtion to sign out the user to login page
  BuildResume(this.signOff);

  @override
  State<BuildResume> createState() => _BuildResumeState();
}

class _BuildResumeState extends State<BuildResume> {
  PickedFile?
      imgFile; //image_picker: ^0.8.4+10 has been used to take the photo from gallery
  final ImagePicker picker = ImagePicker();

  Widget profileImage() {
    //This sets the default image on the entry fields till an image is selected
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: imgFile == null
                  ? AssetImage('assets/defaultImag.png') as ImageProvider
                  : FileImage(File(imgFile!.path)),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 150,
          child: InkWell(
              onTap: () => takePhoto(ImageSource.gallery),
              child: Icon(Icons.camera_alt, color: Colors.teal, size: 40)),
        ),
      ],
    );
  }

  void takePhoto(ImageSource source) async {
    //This takes the photo from gallery when the camera icon is pressed
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      imgFile = pickedFile!;
    });
  }

  Widget addListWithKeyboard(TextEditingController controller, String label) {
    //This method add the fields with entry type numbers
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        controller: controller,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget addList(TextEditingController controller, String label) {
    //This method add the fields with any entry type
    return Form(
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: TextFormField(
            decoration: InputDecoration(
              labelText: label,
              border: OutlineInputBorder(),
            ),
            validator: (val) {
              if (val == null) {
                return "Cant be empty";
              }
              return null;
            },
            controller: controller),
      ),
    );
  }

//All the controllers are defined here with their idexes
  final name = TextEditingController(); //0
  final phone = TextEditingController(); //1
  final address = TextEditingController(); //2
  final email = TextEditingController(); //3
  final about = TextEditingController(); //4
  final position = TextEditingController(); //5
  final company = TextEditingController(); //6
  final college = TextEditingController(); //7
  final class_twelve = TextEditingController(); //8
  final class_tenth = TextEditingController(); //9
  final collegeCGPA = TextEditingController(); //10
  final twelvePercent = TextEditingController(); //11
  final tenthPercent = TextEditingController(); //12
  final project1Heading = TextEditingController(); //13
  final project1Detail = TextEditingController(); //14
  final project2Heading = TextEditingController(); //15
  final project2Detail = TextEditingController(); //16
  final linkdin = TextEditingController(); //17
  final github = TextEditingController(); //18
  final skill1 = TextEditingController(); //19
  final skill2 = TextEditingController(); //20
  final skill3 = TextEditingController(); //21
  final HackerSkill1 = TextEditingController(); //22
  final HackerSkill2 = TextEditingController(); //23
  final HackerSkill3 = TextEditingController(); //24
  final lang1 = TextEditingController(); //25
  final lang2 = TextEditingController(); //26
  final hobbie1 = TextEditingController(); //27
  final hobbie2 = TextEditingController(); //28
  final hobbie3 = TextEditingController(); //29
  final country = TextEditingController(); //30
  final state = TextEditingController(); //31

  List<String> controller = [];
//This function is called when the submit button is clicked to add all the controllers to the list as strings
  BuildResume() {
    controller.insert(0, name.text);
    controller.insert(1, phone.text);
    controller.insert(2, address.text);
    controller.insert(3, email.text);
    controller.insert(4, about.text);
    controller.insert(5, position.text);
    controller.insert(6, company.text);
    controller.insert(7, college.text);
    controller.insert(8, class_twelve.text);
    controller.insert(9, class_tenth.text);
    controller.insert(10, collegeCGPA.text);
    controller.insert(11, twelvePercent.text);
    controller.insert(12, tenthPercent.text);
    controller.insert(13, project1Heading.text);
    controller.insert(14, project1Detail.text);
    controller.insert(15, project2Heading.text);
    controller.insert(16, project2Detail.text);
    controller.insert(17, linkdin.text);
    controller.insert(18, github.text);
    controller.insert(19, skill1.text);
    controller.insert(20, skill2.text);
    controller.insert(21, skill3.text);
    controller.insert(22, HackerSkill1.text);
    controller.insert(23, HackerSkill2.text);
    controller.insert(24, HackerSkill3.text);
    controller.insert(25, lang1.text);
    controller.insert(26, lang2.text);
    controller.insert(27, hobbie1.text);
    controller.insert(28, hobbie2.text);
    controller.insert(29, hobbie3.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter your details"), actions: <Widget>[
        //AppBar
        IconButton(
          icon: Icon(Icons.logout),
          tooltip: 'LogOut',
          onPressed: () =>
              widget.signOff(), //The user will logout on clicking on this icon
        )
      ]),
      body: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            profileImage(),
            //All TextFields are defined here
            addList(name, 'Name'),
            addListWithKeyboard(phone, 'Phone Number'),
            addList(address, 'State/Country (eg. UP/India)'),
            addList(email, 'Email'),
            addList(about, 'About'),
            addList(position, 'Position (eg. Junior Engineer)'),
            addList(company, 'Comapny'),
            addList(college, 'College'),
            addListWithKeyboard(collegeCGPA, 'College current CGPA'),
            addList(class_twelve, 'Class 12 (eg.St Mary\'s ....)'),
            addListWithKeyboard(twelvePercent, 'Class 12 Percentage'),
            addList(class_tenth, 'Class 10 (eg.St Mary\'s ....)'),
            addListWithKeyboard(tenthPercent, 'Class 10 Percentage'),
            addList(project1Heading, 'Project Heading'),
            addList(project1Detail, 'Detail'),
            addList(project2Heading, 'Project Heading'),
            addList(project2Detail, 'Detail'),
            addList(linkdin, 'Linkdin'),
            addList(github, 'GitHub'),
            addList(skill1, 'Skill 1(HTML,JAVA etc...)'),
            addListWithKeyboard(HackerSkill1, 'Hacker Rank Star'),
            addList(skill2, 'Skill 2(HTML,JAVA etc...)'),
            addListWithKeyboard(HackerSkill2, 'Hacker Rank Star'),
            addList(skill3, 'Skill 3(HTML,JAVA etc...)'),
            addListWithKeyboard(HackerSkill3, 'Hacker Rank Star'),
            addList(hobbie1, 'Hobbie'),
            addList(hobbie2, 'Hobbie'),
            addList(hobbie3, 'Hobbie'),
            addList(lang1, 'First Language (eg. English)'),
            addList(lang2, 'Second Language (eg. English)'),
            Center(
              child: RaisedButton(
                  onPressed: () {
                    //The Submit button

                    BuildResume();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Template(controller, imgFile),
                      ),
                    );
                  },
                  child: Text('Submit')),
            )
          ]),
        ),
      ),
    );
  }
}
