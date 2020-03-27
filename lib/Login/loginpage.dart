import 'package:course_projectt/Login/login_auth.dart';
import 'package:course_projectt/Login/register_user.dart';
import 'package:flutter/material.dart';



class GlobalCache {
  GlobalCache._privateConstructor();
  static final GlobalCache instance = GlobalCache._privateConstructor();

  double fontSize = 14;
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalCache.instance.fontSize = MediaQuery.of(context).size.width * 0.04;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Material(
                color: Colors.white,
                elevation: 4,
                child: TabBar(
                  tabs: [
        Tab(text:'LOGIN'),
        Tab(text: 'REGISTER'), ],
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Login(),
                  Register(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
