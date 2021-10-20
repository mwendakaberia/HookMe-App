class Users{
  int userID;
  String imgUrl;
  bool isOnline;
  String name;

  Users({this.userID, this.imgUrl, this.isOnline, this.name});
}

Users currentUser=Users(userID: 0,imgUrl: 'Image/img1.jpg',isOnline: true,name: 'Large');
Users ndackia=Users(userID: 4,imgUrl: 'Image/img2.jpg',isOnline: true,name: 'ndackia');
Users mwepaka=Users(userID: 1,imgUrl: 'Image/img5.jpg',isOnline: false,name: 'mwepaka');
Users kaberia=Users(userID: 2,imgUrl: 'Image/img4.jpg',isOnline: true,name: 'kaberia');
Users mwenda=Users(userID: 3,imgUrl: 'Image/img6.jpg',isOnline: false,name: 'mwenda');

List<Users> userlist=[
  currentUser,ndackia,mwepaka,kaberia,mwenda
];