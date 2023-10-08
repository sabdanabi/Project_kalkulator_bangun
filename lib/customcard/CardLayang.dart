import 'package:flutter/material.dart';


class CardLayang extends StatelessWidget {

  final VoidCallback onTap;

  CardLayang(this.onTap);

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
          shadowColor: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Layang-Layang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                child: const Image(
                  image: AssetImage('images/layan.png'),
                  width: 135.0,
                  height: 135.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}