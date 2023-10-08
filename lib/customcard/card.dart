import 'package:flutter/material.dart';


class CardSegi extends StatelessWidget {
  final VoidCallback onTap;

  CardSegi(this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 30.0),
        width: 380.0,
        height: 200.0,
        child: Card(
          color: Colors.white,
          elevation: 5.5,
          shadowColor: Colors.yellowAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: <Widget>[
             Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Segitiga',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 95.0),
                child: Image(
                  image: AssetImage('images/segit.png'),
                  width: 160.0,
                  height: 160.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}