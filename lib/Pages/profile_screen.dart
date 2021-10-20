import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
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
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0, top: 40.0),
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: EdgeInsets.all(15.0),
                            //color: Colors.yellowAccent,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              //shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                              boxShadow: [
                              BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                                color: Colors.pinkAccent.withOpacity(0.3),
                            ),]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.pending_sharp,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text("24",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text("Pending Matches",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0, top: 40.0),
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: EdgeInsets.all(15.0),
                            //color: Colors.yellowAccent,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                //shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    color: Colors.pinkAccent.withOpacity(0.3),
                                  ),]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.sentiment_dissatisfied_sharp,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text("2",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text("Unmatched Me",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 40.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(15.0),
                        //color: Colors.yellowAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            //shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.pinkAccent.withOpacity(0.3),
                              ),]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                            ),
                            Text("112",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("All Matches",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 40.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(15.0),
                        //color: Colors.yellowAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            //shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.pinkAccent.withOpacity(0.3),
                              ),]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.autorenew_rounded,
                                color: Colors.pink,
                              ),
                            ),
                            Text("5",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("ReMatches",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 40.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(15.0),
                        //color: Colors.yellowAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            //shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.pinkAccent.withOpacity(0.3),
                              ),]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.pink,
                              ),
                            ),
                            Text("506",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("Viwed Profile",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 40.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(15.0),
                        //color: Colors.yellowAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            //shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.pinkAccent.withOpacity(0.3),
                              ),]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pink,
                              ),
                            ),
                            Text("77",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.red,fontSize: 25.0,),),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("Super Likes",style:TextStyle(color: Colors.black,fontSize: 18.0,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
