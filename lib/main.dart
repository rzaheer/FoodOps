import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:course_projectt/login/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY RESTAURANT ',
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        cursorColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}
