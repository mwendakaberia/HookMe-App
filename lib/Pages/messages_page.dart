import 'package:flutter/material.dart';
import 'package:hookme/models/matches_model.dart';
import 'package:hookme/models/message_model.dart';

class MessagesPage extends StatefulWidget {
  MatchesModel user;

  MessagesPage(this.user);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  _chatBuble(Message message, bool isme, bool isSameUser) {
    if (isme) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .80,
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                message.message,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      message.time,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
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
                        backgroundImage: AssetImage(message.sender.imgUrl),
                        radius: 15,
                      ),
                    ),
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .80,
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(message.message),
            ),
          ),
          !isSameUser
              ? Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
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
                        backgroundImage: AssetImage(message.sender.imgUrl),
                        radius: 15,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      message.time,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isonline = widget.user.isOnline;
    int previousUserId;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: widget.user.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: "\n"),
              isonline
                  ? TextSpan(
                      text: "Online",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  : TextSpan(
                      text: "Offline",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.all(20.0),
                itemCount: chatlist.length,
                itemBuilder: (context, index) {
                  final Message message = chatlist[index];
                  final bool isSameUser =
                      previousUserId == message.sender.userID;
                  previousUserId = message.sender.userID;
                  final bool isme = message.sender.userID == currentUser.userID;
                  return _chatBuble(message, isme, isSameUser);
                }),
          ),
          Container(
            height: 60.0,
            color: Colors.grey,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.photo),
                  onPressed: () {},
                  iconSize: 40.0,
                  color: Colors.white,
                ),
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(hintText: "Send Message..."),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                  iconSize: 40.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
