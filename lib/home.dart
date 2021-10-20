import 'package:flutter/material.dart';
import 'package:hookme/Pages/messages_page.dart';
import 'package:hookme/Pages/profile_screen.dart';
import 'package:hookme/Pages/may_like_screen.dart';
import 'package:hookme/Pages/chat_screen.dart';
import 'package:hookme/Pages/matches_screen.dart';
import 'package:hookme/Pages/settings.dart';
import 'package:hookme/models/matches_model.dart';
import 'package:hookme/models/user.dart';

class Hookmehome extends StatefulWidget {
  UserDetails user2;
  LoginDetails user;

  Hookmehome({this.user,this.user2});


  @override
  _HookmehomeState createState() => _HookmehomeState();
}

class _HookmehomeState extends State<Hookmehome>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print(widget.user.userid);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => Setting(widget.user != null?widget.user.username:widget.user2.username,widget.user != null?widget.user.userid:widget.user2.userid)),
            );
          },
          color: Colors.white,
        ),
        title: Text("HookMe"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(
                Icons.people_alt_sharp,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "MATCHES",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                "MESSAGES",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                "PROFILE",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: matcheslist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MessagesPage(matcheslist[index].sender)));
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(color: Colors.pink, width: 1),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.pink.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(matcheslist[index].imgUrl),
                              radius: 35.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
          Expanded(
            flex: 15,
            child: TabBarView(
              controller: _tabController,
              children: [
                MayLike(),
                Matches(),
                Chats(),
                Profile(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
