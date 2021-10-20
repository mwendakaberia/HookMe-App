import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hookme/Pages/messages_page.dart';
import 'package:hookme/models/message_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MessagesPage(chatlist[index].sender)));
            },
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration:chatlist[index].unread? BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
                          ],
                        ):BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(chatlist[index].sender.imgUrl),
                          radius: 30,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .70,
                        padding: EdgeInsets.all(20.0),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      chatlist[index].sender.name,
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    chatlist[index].sender.isOnline?
                                    Container(
                                      margin: EdgeInsets.only(left: 20.0),
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    )
                                    :Container(child: null,),
                                  ],
                                ),
                                Text(
                                  chatlist[index].time,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                chatlist[index].message,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
        });
  }
}
