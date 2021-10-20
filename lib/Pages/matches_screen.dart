import 'package:flutter/material.dart';
import 'package:hookme/models/matches_model.dart';

class Matches extends StatefulWidget {
  const Matches({Key key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: matcheslist.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(matcheslist[index].userID),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("Note"),
                  content: Text(
                      "Would you like to unmatch ${matcheslist[index].name}"),
                  actions: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text("Yes"),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text("No"),
                    ),
                  ],
                ),
              );
              return result;
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.pink.withOpacity(0.5), width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(matcheslist[index].imgUrl),
                    radius: 60.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  matcheslist[index].name,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          );
        });
  }
}
