import 'dart:convert';

import 'package:hookme/models/user.dart';
import 'package:http/http.dart' as http;

final String url = "http://192.168.43.211:5000/";

Future register(
  String name,
  email,
  gender,
  password,
  imageurl,
) async {
  final result =
      await http.post(Uri.parse("http://192.168.43.211:5000/register"), body: {
    "name": name,
    "email": email,
    "password": password,
    "gender": gender,
    "imageurl": imageurl,
  });

  if (result.statusCode == 201) {
    final jsondata = json.decode(result.body);
    return UserDetails.fromJson(jsondata);
  }
}

Future login(
  String name,
  String password,
) async {
  final result =
      await http.post(Uri.parse("http://192.168.43.211:5000/login"), body: {
    "name": name,
    "password": password,
  });

  if (result.statusCode == 200) {
    final jsondata = json.decode(result.body);
    return LoginDetails.fromJson(jsondata);
  }
}

Future settings({
  String name,
  String likes,
  String job,
  String about,
  String location,
  String age,
  int userid,
}) async {
  final result = await http.put(Uri.parse("http://192.168.43.211:5000/settings/${userid}"), body: {
    "name": name,
    "likes": likes,
    "job": job,
    "location": location,
    "age": age,
    "about": about,
  }).catchError((e){

    print(e);
  });
  if(result.statusCode==201){
    final jsondata=json.decode(result.body);
    return UserDetails.fromJson(jsondata);
  }
  else{
    print('object :: ${result.statusCode}');
  }
}
