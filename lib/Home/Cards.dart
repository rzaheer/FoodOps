import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
const Cards({
    @required this.icon,
    @required this.foodcategory,
    @required this.quantity,
    Key key,
  }) : super(key: key);
  final IconData icon;
  final String foodcategory ;
  final String quantity;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
      height: 70.0,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(icon, color: Colors.red,
                  ),
                ),
               // SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //SizedBox(height: 10.0,),
                    Padding(padding: EdgeInsets.only(left: 8.0)),    
                      Text(foodcategory,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(quantity, style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    //SizedBox(height: 5),
                  ],
                ),
                //SizedBox(width: 5),
              ],
            ),
        ),
      ),
), );
  }
}