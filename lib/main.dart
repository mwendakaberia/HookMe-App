import 'package:flutter/material.dart';
import 'package:hookme/Pages/loginpage.dart';

import 'home.dart';

void main()=>runApp(MyApp ());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HookMe",
      theme: ThemeData(
        primaryColor: Color(0xfff80319),
        accentColor: Color(0xff25D366),
      ),
      //debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
