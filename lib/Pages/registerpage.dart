import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hookme/clipper/custom_cliper.dart';
import 'package:hookme/core/services.dart';
import 'package:hookme/home.dart';
import 'package:hookme/Pages/loginpage.dart';
import 'package:hookme/models/user.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController name_txt=TextEditingController();
  TextEditingController email_txt=TextEditingController();
  TextEditingController password_txt=TextEditingController();
  TextEditingController password2_txt=TextEditingController();


  File image;

  Future pickImage() async {
    final image2 = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      image = image2 as File;
    });
  }

  showImage() {
    return image;
  }

  List<String> preference = ["Male", "Female"];
  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HookMe"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Stack(
              children: [
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .20,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * .75,
              margin: EdgeInsets.only(bottom: 30.0),
              child: Stack(
                children: [
                  Image.asset("Image/img1.jpg"),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      border: Border.all(
                        color: Colors.pink,
                        width: 1.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                TextField(
                                  controller: name_txt,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Username'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: email_txt,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Email Address'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                PopupMenuButton(
                                  onSelected: (index) {
                                    setState(() {
                                      selectedindex = index;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Please select your gender :",
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        preference[selectedindex],
                                        style: TextStyle(
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  itemBuilder: (_) => <PopupMenuItem<int>>[
                                    PopupMenuItem(
                                      child: Text(
                                        preference[0],
                                      ),
                                      value: 0,
                                    ),
                                    PopupMenuItem(
                                      child: Text(
                                        preference[1],
                                      ),
                                      value: 1,
                                    ),
                                  ],
                                ),
                                TextField(
                                  controller: password_txt,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Password'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: password2_txt,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Confirm your Password'),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              showImage()??Text("Select Image"),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 1.5, color: Colors.white),
                                  primary: Colors.pink,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                onPressed: () {
                                  pickImage();
                                },
                                child: Text(
                                  "Pick Profile Image",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width * .75,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side:
                                    BorderSide(width: 1.5, color: Colors.white),
                                primary: Colors.pink,
                                elevation: 15.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              onPressed: () async{

                                //final data=UserDetails(username: name_txt.text, gender: preference[selectedindex],password: password_txt.text,imageurl: "This is my image");
                                final result=await register(name_txt.text,email_txt.text,preference[selectedindex],password_txt.text,"This is my image");

                                print(result.username);

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Hookmehome(user2: result)),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Have an account ? ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => StartPage()));
                                    },
                                  text: "Login",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
