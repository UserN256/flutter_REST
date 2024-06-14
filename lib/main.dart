// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rest_api/pages/onboard_page.dart';
//import 'package:rest_api/pages/users_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    
    return MaterialApp(
      // first show on boarding screens      
      home: OnBoardingScreen(),
    );
  }
}
