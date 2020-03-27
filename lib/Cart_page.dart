import 'package:course_projectt/CustomWidgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 2,
      title: 'Your Cart',
      body: Container(
        color: Colors.pink,
      ),
      
    );
  }
}