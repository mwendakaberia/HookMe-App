class UserDetails{
  String username,email,job,location,about,gender,likes,password,imageurl,age;
  int userid;

  UserDetails({this.username,this.email,this.job,this.location,this.about,this.gender,
  this.likes,this.age,this.password,this.imageurl,this.userid});

  factory UserDetails.fromJson(Map<String,dynamic> item){
    return UserDetails(
        username:item["Username"] != null ? item["Username"].toString() : "",
        job:item["Job"] != null ? item["Job"].toString() : "",
        location:item["Location"]!=null?item["Location"].toString():"",
        about:item["About"]!=null?item["About"].toString():"",
        gender:item["Gender"] != null ? item["Gender"].toString() : "",
        likes:item["Interested In"]!=null?item["Interested In"].toString():"",
        age:item["Age"]!=null?item["Age"]:"0",
        userid:item["UserID"]!=null?item["UserID"]:0,
        imageurl: item["ImageUrl"] != null ? item["ImageUrl"].toString() : "");
  }

  Map<String,dynamic> toJson(){
    return{
      "name":username,
      "email":email,
      "password":password,
      "imageurl":imageurl,
      "gender":gender
    };
  }
}

class LoginDetails {
  LoginDetails({
    this.about,
    this.age,
    this.gender,
    this.imageUrl,
    this.interestedIn,
    this.job,
    this.location,
    this.username,
    this.userid,
  });

  dynamic about;
  dynamic age;
  int userid;
  String gender;
  String imageUrl;
  dynamic interestedIn;
  dynamic job;
  dynamic location;
  String username;

  factory LoginDetails.fromJson(Map<String, dynamic> json) => LoginDetails(
    about: json["About"],
    age: json["Age"],
    gender: json["Gender"],
    imageUrl: json["ImageUrl"],
    interestedIn: json["Interested In"],
    job: json["Job"],
    location: json["Location"],
    username: json["Username"],
    userid:json["UserID"],
  );

  Map<String, dynamic> toJson() => {
    "About": about,
    "Age": age,
    "Gender": gender,
    "ImageUrl": imageUrl,
    "Interested In": interestedIn,
    "Job": job,
    "Location": location,
    "Username": username,
  };
}

