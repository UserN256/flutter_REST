// Vzyal zdesya: https://github.com/mitchkoko/ModernLoginUI/
// ignore_for_file: prefer_const_constructors

//import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:http_auth/http_auth.dart';
import 'package:rest_api/components/my_button.dart';
import 'package:rest_api/components/my_textfield.dart';
import 'package:rest_api/pages/users_page.dart';
//import 'package:rest_api/pages/users_page.dart';
//import 'package:rest_api/model/user.dart';
//import 'package:rest_api/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //List<User> users = [];
  // sign user in method
  void signUserIn() {}

  // define listeners for controllers
  void _usernameControllerListener() {
    final text = usernameController.text;
    print('Username text field: $text (${text.characters.length})');
  }

  void _passwordControllerListener() {
    final text = passwordController.text;
    print('Password text field: $text (${text.characters.length})');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  // when controllers changes, call listeners _usernameControllerListener and _passwordControllerListener
  void initState() {
    super.initState();
    // Start listening to changes.
    usernameController.addListener(_usernameControllerListener);
    passwordController.addListener(_passwordControllerListener);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.blue),
            onPressed: () => Navigator.of(context).pop()),
        backgroundColor: Color(0xffe9ecef),
      ),
      backgroundColor: Color(0xffe9ecef),
      body: SafeArea(
        child: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),

              // logo
              const Icon(Icons.lock, size: 100, color: Color(0xff00d6c8)),

              const SizedBox(height: 15),

              // welcome back, you've been missed!
              Center(
                child: Text(
                  'Введите логин и пароль',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                  buttonText: 'Войти',
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        // where we go after onboard page
                        builder: (context) {
                          return UsersPage();
                        },
                      ));
                    },
                  buttonColor: 0xff00d6c8),

              const SizedBox(height: 25),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Или продолжить как...',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign as User button
              MyButton(
                  buttonText: 'User',
                  onTap: signUserIn,
                  buttonColor: 0xff007bff),

              const SizedBox(height: 30),

              // sign as Admin button
              MyButton(
                  buttonText: 'Admin',
                  onTap: signUserIn,
                  buttonColor: 0xff007bff),

              /*// google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'assets/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'assets/apple.png')
                ],
              ),*/

              const SizedBox(height: 30),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Нет аккаунта?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Регистрация >>',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}