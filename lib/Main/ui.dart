
import 'package:flutter/material.dart';
import 'package:project_kalkulator_bangun/bangundatarpage/textFild.dart';
import 'package:project_kalkulator_bangun/customcard/card.dart';

import '../customcard/CardLayang.dart';
import '../customcard/CardPP.dart';
import '../customcard/CardSiku.dart';
import '../customcard/JajarCard.dart';
import '../bangundatarpage/PPTF.dart';
import '../bangundatarpage/jajargenTF.dart';
import '../bangundatarpage/layangTF.dart';
import '../bangundatarpage/sikuTF.dart';

class homeui extends StatefulWidget {
  const homeui({super.key});

  @override
  State<homeui> createState() => _homeuiState();
}

class _homeuiState extends State<homeui> {


  bool isCardClicked = false;
  bool isCardClicked1 = false;
  bool isCardClicked2 = false;
  bool isCardClicked3 = false;
  bool isCardClicked4 = false;


  void toggleCardClicked() {
    setState(() {
      isCardClicked = true;
      isCardClicked1 = false;
      isCardClicked2 = false;
      isCardClicked3 = false;
      isCardClicked4 = false;
    });
  }

  void toggleCardClicked1() {
    setState(() {
      isCardClicked = false;
      isCardClicked1 = true;
      isCardClicked2 = false;
      isCardClicked3 = false;
      isCardClicked4 = false;
    });
  }

  void toggleCardClicked2() {
    setState(() {
      isCardClicked = false;
      isCardClicked1 = false;
      isCardClicked2 = true;
      isCardClicked3 = false;
      isCardClicked4 = false;
    });
  }

  void toggleCardClicked3() {
    setState(() {
      isCardClicked = false;
      isCardClicked1 = false;
      isCardClicked2 = false;
      isCardClicked3 = true;
      isCardClicked4 = false;
    });
  }

  void toggleCardClicked4() {
    setState(() {
      isCardClicked = false;
      isCardClicked1 = false;
      isCardClicked2 = false;
      isCardClicked3 = false;
      isCardClicked4 = true;
    });
  }


  void goBackToCard() {
    setState(() {
      isCardClicked = false;
      isCardClicked1 = false;
      isCardClicked2 = false;
      isCardClicked3 = false;
      isCardClicked4 = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Hitung Luas dan Volume',style: TextStyle(fontWeight: FontWeight.bold),)),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Luas'),
              Tab(text: 'Volume'),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30.0),
          height: 700.0,
          child: TabBarView(
            children: [
              ListView(
                children: [
                  Center(child: isCardClicked ? MyTextFild(goBackToCard) : CardSegi(toggleCardClicked)),
                  Center(child: isCardClicked1 ? PPTextFild(goBackToCard) : CardPP(toggleCardClicked1)),
                  Center(child: isCardClicked2 ? JajarTf(goBackToCard) : JajarCard(toggleCardClicked2)),
                  Center(child: isCardClicked3 ? LayangTF(goBackToCard) : CardLayang(toggleCardClicked3)),
                  Center(child: isCardClicked4 ? SikuTF(goBackToCard) : CardSiku(toggleCardClicked4)),
                ],
              ),
              ListView(
                children: [
                  Center(child: isCardClicked ? MyTextFild(goBackToCard) : CardSegi(toggleCardClicked)),
                  Center(child: isCardClicked1 ? PPTextFild(goBackToCard) : CardPP(toggleCardClicked1)),
                  Center(child: isCardClicked2 ? JajarTf(goBackToCard) : JajarCard(toggleCardClicked2)),
                  Center(child: isCardClicked3 ? LayangTF(goBackToCard) : CardLayang(toggleCardClicked3)),
                  Center(child: isCardClicked4 ? SikuTF(goBackToCard) : CardSiku(toggleCardClicked4)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




