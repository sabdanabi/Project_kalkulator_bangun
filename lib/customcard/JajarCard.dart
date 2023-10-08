import 'package:flutter/material.dart';


class JajarCard extends StatelessWidget {

  final VoidCallback onTap;

  JajarCard(this.onTap);

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
          shadowColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Jajargenjang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Image(
                  image: AssetImage('images/jajargen.png'),
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}