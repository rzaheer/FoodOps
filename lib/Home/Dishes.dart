
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_projectt/CustomWidgets/custom_circular_button.dart';
import 'package:flutter/material.dart';

class Dishes extends StatelessWidget {
  
final List<Map> items =[
    {"img": "assets/food1.jpeg", "name": "Fruit Salad"},
    {"img": "assets/food2.jpeg", "name": "Fruit Salad"},
    {"img": "assets/food3.jpeg", "name": "Hamburger"},
    {"img": "assets/food4.jpeg", "name": "Fruit Salad"},
    {"img": "assets/food5.jpeg", "name": "Hamburger"},
    {"img": "assets/food6.jpeg", "name": "Steak"},
    {"img": "assets/food7.jpeg", "name": "Pizza"},
    {"img": "assets/food8.jpeg", "name": "Asparagus"},
    {"img": "assets/food9.jpeg", "name": "Salad"},
    {"img": "assets/food10.jpeg", "name": "Pizza"},
    {"img": "assets/food11.jpeg", "name": "Pizza"},
    {"img": "assets/food12.jpg", "name": "Salad"},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List();

        return ListView(
          children:<Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'Dishes',
                    style: TextStyle(
                        fontSize: 23, color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'View More',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
                    ))
              ],
            ),
Padding(padding: EdgeInsets.only(right: 8.0, left:8.0),
     child: StreamBuilder<QuerySnapshot>(
              stream: 
              Firestore.instance.collection('popular items').snapshots(),
          builder:
             (context, snapshot) {
            if (!snapshot.hasData) return LinearProgressIndicator();

            return _buildCarouselslider(context, snapshot.data.documents, items);
                      },
                    ),
         ) ], );
              }

  Widget _buildCarouselslider(
   BuildContext context, List<DocumentSnapshot> documents,List<Widget> x) {
     List<Widget> getRatingRow() {
      List<Widget> row = List();
      for (int i = 0; i < 5; i++) {
        row.add(Icon(
          Icons.star,
          color: Colors.orangeAccent,
          size: 11,
        ));
      }
      row.add(Container(
        width: 8,
      ));
      row.add(
        Text(
          '5.0 (23 Reviews)',
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      );
      return row;
    }

    int counter = 0;
    
    documents.forEach((item) {
      x.add(
        InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        items[counter]['img'],
                        width: 1000.0,
                        //height: MediaQuery.of(context).size.height / 2.4,
                        //width: MediaQuery.of(context).size.width ,
                        //fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      height: 30,
                      width: 30,
                      right: 8.0,
                      bottom: 8.0,
                      child: CircularButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 15,
                          ),
                          onPressed: () {}),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 2),
                  child: Text(
                    item['name'],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
                Row(
                  children: getRatingRow(),
                ),
              ],
            )),
      );

              
    counter++;
 }, );

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: CarouselSlider(
        aspectRatio: 1.0,
        items: x.toList(),
        autoPlay: true,
        viewportFraction: 1.0,
      ),
    );
  }

}
