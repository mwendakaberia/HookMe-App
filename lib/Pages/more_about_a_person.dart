import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MoreDetail extends StatefulWidget {
  @override
  _MoreDetailState createState() => _MoreDetailState();
}

class _MoreDetailState extends State<MoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More Details"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Image.asset("Image/img1.jpg"),
                  Container(
                    height: MediaQuery.of(context).size.height * .5,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60.0),
                            bottomRight: Radius.circular(60.0)),
                        //shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.pink,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ]),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            //shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.pink,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ]),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("Image/img1.jpg"),
                          radius: 80.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Age:  ",
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                          text: "24",
                          style: TextStyle(
                              color: Colors.red,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Gender:  ",
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                          text: "Male",
                          style: TextStyle(
                              color: Colors.red,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Location:  ",
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                          text: "Kakamega",
                          style: TextStyle(
                              color: Colors.red,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900),
                  ),
                  ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pink,
        icon: Icon(
          Icons.photo_album,
          color: Colors.white,
        ),
        label: Text(
          "More Photos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
