import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hookme/Pages/more_about_a_person.dart';
import 'package:hookme/models/user_model.dart';

class MayLike extends StatefulWidget {
  const MayLike({Key key}) : super(key: key);

  @override
  _MayLikeState createState() => _MayLikeState();
}

class _MayLikeState extends State<MayLike> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:userlist.length,itemBuilder: (context,index){
      return Dismissible(
        key: ValueKey(userlist[index].userID),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction){},
        confirmDismiss: (direction) async{
          final result = await showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("Note"),
              content: Text("Would you like to initiate a match bond with ${userlist[index].name}"),
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
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MoreDetail()),);
          },
          child: Column(
            children: [
              Container(
               padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink.withOpacity(0.5),width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(userlist[index].imgUrl),
                    Text(userlist[index].name,style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      backgroundColor: Colors.white.withOpacity(0.5),
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
