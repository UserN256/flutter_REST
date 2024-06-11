// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

// ignore: must_be_immutable
class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});
  final String urlString = 'https://github.com/JavaOPs/topjava';
  final double textFontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/javaopslogo.png')),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Java Enterprise проект',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textFontSize,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _launchUrl();
                              },
                          ),
                          TextSpan(
                            text:
                                ' с регистрацией/авторизацией и правами доступа на основе ролей (USER, ADMIN). Администратор может создавать/редактировать/удалять пользователей, а пользователи - управлять своим профилем и данными (едой) через UI (по AJAX) и по REST интерфейсу с базовой авторизацией. Возможна фильтрация еды по датам и времени. Цвет записи таблицы еды зависит от того, превышает ли сумма калорий за день норму (редактируемый параметр в профиле пользователя). Весь REST интерфейс покрывается JUnit тестами, используя Spring MVC Test и Spring Security Test.',
                            style: TextStyle(
                                color: Colors.black, fontSize: textFontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }

  Future<void> _launchUrl() async {
    if (!await launchUrlString(urlString,
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $urlString');
    }
  }
}
