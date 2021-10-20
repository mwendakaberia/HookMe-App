import 'package:hookme/models/matches_model.dart';

class Message {
  MatchesModel sender;
  String message;
  String time;
  bool unread;

  Message(this.sender, this.message, this.time,this.unread);
}

List<Message> chatlist = [
  Message(ndackia, "Hello there", "17:30", true),
  Message(currentUser, "Semaje", "16:31", true),
  Message(ndackia, "I love Programming", "13:42", true),
  Message(mwepaka, "Coding is sweet", "14:13", false),
  Message(ndackia, "so sweet", "14:13", true),
  Message(currentUser, "you cool", "16:31", true),
  Message(currentUser, "Can't get enough of flutter", "16:31", true),
  Message(ndackia, "Am the best Programmer living", "08:10", false),
  Message(mwepaka, "Coding is bae", "07:55", false),
  Message(currentUser, "I miss ypu", "07:30", false),
  Message(currentUser, "How is the going", "06:40", true),
  Message(currentUser, "Can't get enough of flutter", "16:31", true),
  Message(ndackia, "Vipi Chairman", "09:30", false),
  Message(currentUser, "Can't get enough of flutter", "16:31", true),
  Message(mwepaka, "Meeen!!!!", "12:36", true),
  Message(currentUser, "Will be right there", "10:00", true),
  Message(mwepaka, "Am doing good", "05:30", true),
  Message(currentUser, "Life ni kukachora", "16:31", true),
  Message(currentUser, "Hey", "16:31", true),
];
