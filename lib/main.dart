import 'package:flutter/material.dart';
import 'package:okoipay/user_attendance_tabbar_screen.dart';
import 'package:okoipay/watch_ui.dart';

import 'mvc/views/screens/chat_screens_all/chat_screen.dart';
import 'mvc/views/screens/chat_screens_all/all_products_list.dart';
import 'mvc/views/screens/signin_signup_verification_screens/login_screen.dart';
import 'mvc/views/screens/splash_or_on_bording_screens/Splash_screen_1.dart';
import 'mvc/views/screens/splash_or_on_bording_screens/onboarding1.dart';
 void main(){
   runApp(const MyApp());
 }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Chat1Tab1() ,
    );
  }
}


