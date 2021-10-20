import 'package:flutter/material.dart';
import 'package:hookme/core/services.dart';
import 'package:hookme/models/user.dart';

class Setting extends StatefulWidget {
  String name;
  int userid;

  Setting(this.name, this.userid);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextEditingController name_txt = TextEditingController();
  TextEditingController age_txt = TextEditingController();
  TextEditingController job_txt = TextEditingController();
  TextEditingController about_txt = TextEditingController();
  TextEditingController location_txt = TextEditingController();

  List<String> preference2 = ["Both", "Female", "Male"];
  var selectedindex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.5),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("Image/img1.jpg"),
                radius: 60.0,
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: TextField(
                      controller: name_txt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: widget.name),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Age",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: TextField(
                      controller: age_txt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Age'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: TextField(
                      controller: location_txt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Location'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Job",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: TextField(
                      controller: job_txt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Provide your Job details'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: TextField(
                      controller: about_txt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText:
                              'Provide a short description about yourself'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Interested In:",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  PopupMenuButton(
                    onSelected: (index) {
                      setState(() {
                        selectedindex2 = index;
                      });
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          preference2[selectedindex2],
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    itemBuilder: (_) => <PopupMenuItem<int>>[
                      PopupMenuItem(
                        child: Text(
                          preference2[0],
                        ),
                        value: 0,
                      ),
                      PopupMenuItem(
                        child: Text(
                          preference2[1],
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text(
                          preference2[2],
                        ),
                        value: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width * .75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1.5, color: Colors.white),
                          primary: Colors.pink,
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () async {
                          UserDetails user;
                          user = await settings(
                            name: name_txt.text,
                            age: age_txt.text,
                            likes: preference2[selectedindex2],
                            job: job_txt.text,
                            about: about_txt.text,
                            location: location_txt.text,
                            userid: widget.userid,
                          );
                          print(user.username);
                          if(user.username != null){
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text("Done"),
                                content: Text("Details updated successfully"),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Ok"),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
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
