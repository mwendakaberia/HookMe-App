import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hookme/clipper/custom_cliper.dart';
import 'package:hookme/core/services.dart';
import 'package:hookme/home.dart';
import 'package:hookme/Pages/registerpage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HookMe"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CustomShapeClipper(),
                    child: Container(
                      //height: MediaQuery.of(context).size.height * .35,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
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
                                  controller: username,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Username'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: password,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Password'),
                                ),
                              ],
                            ),
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

                                final result=await login(username.text, password.text);

                                print(result.username);

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Hookmehome(user: result)),
                                );
                              },
                              child: Text(
                                "Login",
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
                                  text: "Don't have an account ? ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()..onTap=(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Register()));
                                },
                                  text: "Register",
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
