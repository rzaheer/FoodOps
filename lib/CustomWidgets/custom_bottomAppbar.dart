import 'package:course_projectt/AccountDetails.dart';
import 'package:course_projectt/Cart_page.dart';
import 'package:course_projectt/FavouritesPage/Favourites.dart';
import 'package:course_projectt/Home/homepage.dart';
import 'package:flutter/material.dart';


class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key key, @required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0
                    ? Colors.red
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
              }),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: index == 1
                      ? Colors.red
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => FavouritesPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: index == 2
                      ? Colors.red
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Cart()));
                }),
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: index == 3
                    ? Colors.red
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => AccDetails()));
                }),
        ],
      ),
    );
  }
}
