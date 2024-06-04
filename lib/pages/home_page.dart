// ignore_for_file: must_be_immutable

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:http_auth/http_auth.dart';
import 'package:rest_api/model/user.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   List<User> users = [];



  // get users
  Future getUsers() async{
    var client = BasicAuthClient('admin@gmail.com', 'admin');
    var response = await client.get(Uri.parse('https://javaops-demo.ru/topjava/rest/admin/users'));
    var jsondata = jsonDecode(response.body);
    
    for (var eachItem in jsondata){
      final user = User(
        id: eachItem["id"], 
        name: eachItem["name"], 
        email: eachItem["email"],
      );
      users.add(user);
    }

    print(users.length);
    

  }
  @override
  Widget build(BuildContext context) {
    getUsers();
    return Scaffold();
  }
}