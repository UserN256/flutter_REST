// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:rest_api/pages/home_page.dart';
import 'package:rest_api/pages/intro_screens/intro_page_1.dart';
import 'package:rest_api/pages/intro_screens/intro_page_2.dart';
import 'package:rest_api/pages/intro_screens/intro_page_3.dart';
import 'package:rest_api/pages/users_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track what page we're on
  PageController _controller = PageController();

  // keep track if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        // dot indicators
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                    onTap: () {
                      //_controller.jumpToPage(2);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return UsersPage();
                        },
                      ));
                    },
                    child: Text('пропустить')),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                // next or done button
                onLastPage
                    ?
                    // if we are on last page show 'done'
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            // when done with onboarding, go 1st users page 
                            //TO DO: change to intro page with login
                            builder: (context) {
                              return UsersPage();
                            },
                          ));
                        },
                        child: Text('понятно'))
                    :
                    // if not last page, after : we need 'next'
                    GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('дальше')),
              ],
            ))
      ],
    ));
  }
}
