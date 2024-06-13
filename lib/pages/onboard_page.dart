// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:rest_api/pages/intro_screens/intro_page_1.dart';
import 'package:rest_api/pages/intro_screens/intro_page_2.dart';
import 'package:rest_api/pages/login_page.dart';
//import 'package:rest_api/pages/users_page.dart';
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
  final double textFontSize = 20;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 1);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
          ],
        ),
        // dot indicators
        Container(
            alignment: const Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        // where we go after onboard page
                        builder: (context) {
                          return LoginPage();
                        },
                      ));
                    },
                    child: Text(
                      'пропустить',
                      style: TextStyle(color: Colors.blue, fontSize: textFontSize, fontWeight: FontWeight.bold),//Color(0xff007bff)
                    )),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 2),
                // next or done button
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Container(     
                    decoration: BoxDecoration(color: Color(0xff00d6c8),borderRadius: BorderRadius.all(Radius.circular(8))),                                   
                    child: onLastPage
                        ?
                        // if we are on last page show 'done' - 'готово'
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                // when done with onboarding, go 1st users page
                                //TO DO: change to intro page with login
                                builder: (context) {
                                  return LoginPage();
                                },
                              ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                ' готово',
                                style: TextStyle(color: Colors.white, fontSize: textFontSize, fontWeight: FontWeight.bold),
                              ),
                            ))
                        :
                        // if not last page, after : we need 'next'
                        GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'дальше',
                                style: TextStyle(color: Colors.white, fontSize: textFontSize, fontWeight: FontWeight.bold),
                              ),
                            )),
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
