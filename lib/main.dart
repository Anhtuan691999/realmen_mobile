
import 'package:flutter/material.dart';
import 'package:untitled1/screen/homepageScreen.dart';
import 'package:untitled1/screen/loginPhone.dart';
import 'package:untitled1/screen/otpPhone.dart';
import 'package:untitled1/screen/registerPhoneScreen.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(), 'otp': (context) => MyOtp(), 'register': (context) => registerPhone(),
      },
    );
  }
}

