
import 'package:course_projectt/CustomWidgets/custom_scaffold.dart';

import 'package:course_projectt/Home/Dishes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


 

  @override
  Widget build(BuildContext context) {
     

    return CustomScaffold(
      title: 'Home Page',
      index: 0,
      body: Dishes() );
  }
}