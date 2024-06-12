// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

// ignore: must_be_immutable
class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});
  final String urlString = 'https://github.com/JavaOPs/topjava';
  final double textFontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 140,),
                      Text('Стек технологий:',style: TextStyle(color: Colors.black, fontSize: textFontSize+5)),
                      //Image(image: AssetImage('assets/javaopslogo.png')),
                      SizedBox(height: 10,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Spring Security',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://projects.spring.io/spring-security/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Spring MVC',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('https://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Spring Data JPA',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://projects.spring.io/spring-data-jpa/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Spring Security Test',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://spring.io/blog/2014/05/07/preview-spring-security-test-method-security');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Hibernate ORM',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://hibernate.org/orm/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Hibernate Validator',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://hibernate.org/validator/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'SLF4J',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://www.slf4j.org/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Json Jackson',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('https://github.com/FasterXML/jackson');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'JSP',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://ru.wikipedia.org/wiki/JSP');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'JSTL',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://en.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Apache Tomcat',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://tomcat.apache.org/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'WebJars',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://www.webjars.org/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'DataTables',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://datatables.net/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'EHCACHE',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://ehcache.org');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'PostgreSQL',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://www.postgresql.org/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'HSQLDB',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://hsqldb.org/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'JUnit 5',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('https://junit.org/junit5/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Hamcrest',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://hamcrest.org/JavaHamcrest/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'AssertJ',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('https://assertj.github.io/doc/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'jQuery',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://jquery.com/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'jQuery plugins',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('https://plugins.jquery.com/');
                                },
                            ),
                            TextSpan(
                              text:
                                  ', ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),
                            TextSpan(
                              text: 'Bootstrap',
                              style: TextStyle(
                                // Make hyperlink blue
                                color: Colors.blue,
                                fontSize: textFontSize,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl('http://getbootstrap.com/');
                                },
                            ),
                            TextSpan(
                              text:
                                  '.',
                              style: TextStyle(
                                  color: Colors.black, fontSize: textFontSize),
                            ),                            
                          ],
                        ),
                      ),
                    ],
                  )),
            )));
  }

  Future<void> _launchUrl(String urlString) async {
    if (!await launchUrlString(urlString,
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $urlString');
    }
  }
}
