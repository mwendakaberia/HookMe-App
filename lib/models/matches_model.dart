class MatchesModel {
  MatchesModel sender;
  int userID;
  String name, imgUrl;
  bool isOnline;

  MatchesModel({this.sender,this.userID,this.name,this.isOnline,this.imgUrl});
}

MatchesModel currentUser=MatchesModel(userID: 0,imgUrl: 'Image/img1.jpg',isOnline: true,name: 'Large');
MatchesModel ndackia=MatchesModel(userID: 1,imgUrl: 'Image/img2.jpg',isOnline: true,name: 'ndackia');
MatchesModel mwepaka=MatchesModel(userID: 2,imgUrl: 'Image/img4.jpg',isOnline: false,name: 'mwepaka');
MatchesModel kaberia=MatchesModel(userID: 3,imgUrl: 'Image/img5.jpg',isOnline: true,name: 'kaberia');
MatchesModel mwenda=MatchesModel(userID: 4,imgUrl: 'Image/img6.jpg',isOnline: true,name: 'mwenda');
MatchesModel large=MatchesModel(userID: 5,imgUrl: 'Image/img7.jpg',isOnline: false,name: 'large');
MatchesModel mwongera=MatchesModel(userID: 6,imgUrl: 'Image/img8.jpg',isOnline: true,name: 'mwongera');
MatchesModel roma=MatchesModel(userID: 7,imgUrl: 'Image/img9.jpg',isOnline: true,name: 'roma');
MatchesModel enos=MatchesModel(userID: 8,imgUrl: 'Image/img10.jpg',isOnline: false,name: 'enos');
MatchesModel okello=MatchesModel(userID: 9,imgUrl: 'Image/img11.jpg',isOnline: true,name: 'okello');
MatchesModel daggie=MatchesModel(userID: 10,imgUrl: 'Image/img12.jpg',isOnline: true,name: 'daggie');
MatchesModel patoh=MatchesModel(userID: 11,imgUrl: 'Image/img1.jpg',isOnline: false,name: 'patoh');


List<MatchesModel> matcheslist=[
  currentUser,ndackia,mwepaka,kaberia,mwenda,large,mwongera,roma,enos,okello,daggie,patoh
];