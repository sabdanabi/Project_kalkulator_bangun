import 'package:flutter/material.dart';


class CardPP extends StatelessWidget {

  final VoidCallback onTap;

  CardPP(this.onTap);

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
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Persegi Panjang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0),
                child: const Image(
                  image: AssetImage('images/persegi.jpg'),
                  width: 110.0,
                  height: 110.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}