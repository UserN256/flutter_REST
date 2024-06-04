// ignore_for_file: must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:http_auth/http_auth.dart';
import 'package:rest_api/model/user.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

  void CheckBoxChanged(bool? value, int index) {
    setState(() {
      users[index].isEnabled = !users[index].isEnabled;
    });
  }

  // get users
  Future getUsers() async {
    var client = BasicAuthClient('admin@gmail.com', 'admin');
    var response = await client
        .get(Uri.parse('https://javaops-demo.ru/topjava/rest/admin/users'));
    var jsondata = jsonDecode(response.body);

    for (var eachItem in jsondata) {
      final user = User(
        id: eachItem["id"],
        name: eachItem["name"],
        email: eachItem["email"],
        isEnabled: eachItem["enabled"],
      );
      users.add(user);
    }
    //print(users.length);
  }

  @override
  Widget build(BuildContext context) {
    getUsers();
    return Scaffold(
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          //is it done loading?
          if (snapshot.connectionState == ConnectionState.done) {
            return BuilderForListview(users: users);
          } else {
            return Center(child: CircularProgressIndicator());
          }
          //still loading
        },
      ),
    );
  }
}

class BuilderForListview extends StatefulWidget {
  const BuilderForListview({
    super.key,
    required this.users,
  });

  final List<User> users;

  @override
  State<BuilderForListview> createState() => _BuilderForListviewState();
}

class _BuilderForListviewState extends State<BuilderForListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.users.length,
      itemBuilder: (context, index) {
        bool isenabled = widget.users[index].isEnabled;
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: isenabled ? Colors.green[700] : Colors.green[100],
            child: const Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
            ),
          ),
          textColor: isenabled ? Colors.black : Colors.grey,
          title: Text(
            widget.users[index].name,
            style: isenabled
                ? const TextStyle(fontWeight: FontWeight.w500)
                : const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          subtitle: Text(
            widget.users[index].email,
            style: isenabled
                ? const TextStyle(fontWeight: FontWeight.w500)
                : const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          trailing: Checkbox(
            value: isenabled,
            onChanged: (value) {
              setState(() {
                widget.users[index].isEnabled = !widget.users[index].isEnabled;
              });
            },
          )
          /*isenabled
              ? Icon(
                  Icons.check_circle,
                  color: Colors.green[700],
                )
              : const Icon(
                  Icons.check_circle_outline,
                  color: Colors.grey,
                )*/
          ,
        );
      },
    );
  }
}
