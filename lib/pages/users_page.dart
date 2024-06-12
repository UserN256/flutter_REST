// ignore_for_file: must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http_auth/http_auth.dart';
import 'package:rest_api/model/user.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
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
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(child: Text("Пользователи", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)),
      ),
      // Background color of whole application
      backgroundColor: Color(0xffe9ecef),
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          //is it done loading?
          if (snapshot.connectionState == ConnectionState.done) {
            return BuilderForListview(users: users);
          } else {
            //still loading
            return Center(child: CircularProgressIndicator());
          }
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

  // Store all users here
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
        // Variable for enabled status
        bool isenabled = widget.users[index].isEnabled;
        return Padding(
          padding: const EdgeInsets.only(left: 2.0, top: 2.0, right: 2.0),
          child: Container(
            decoration: BoxDecoration(
                // Rounding corners of each record's box
                borderRadius: BorderRadius.circular(20),
                // Background color of box
                color: Color(0x1000d6c8)),
            child: ListTile(
              leading: CircleAvatar(
                // Color depend of enabled status
                backgroundColor:
                    isenabled ? Color(0xff007bff) : Color(0x50007bff),
                child: const Icon(
                  // show icon
                  Icons.person_outline_outlined,
                  color: Color(0xffe9ecef),
                ),
              ),
              textColor: isenabled ? Colors.black : Colors.grey,
              title: Text(
                //show user name
                widget.users[index].name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                // show email
                widget.users[index].email,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing:
                  //Icon(Icons.keyboard_arrow_right),
                  Checkbox(
                value: isenabled,
                // when checkbox is pressed
                onChanged: (value) {
                  setState(() {
                    widget.users[index].isEnabled =
                        !widget.users[index].isEnabled;
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
