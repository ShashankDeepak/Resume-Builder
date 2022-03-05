// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, no_logic_in_create_state

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Pages/build_resume.dart';
import 'Pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

Future _signOut() async {
  await FirebaseAuth.instance.signOut(); //Call the sign out function
  return LoginPage();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, snap) => FirebaseAuth.instance.currentUser == null
          ? LoginPage()
          : BuildResume(
              _signOut), //If user is not signout open the BuildResume class
      stream: FirebaseAuth.instance.authStateChanges(),
    );
  }

  Execute() {
    //Executes the build resume
    return BuildResume(_signOut);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }

  // This trailing comma makes auto-formatting nicer for build methods.

}
