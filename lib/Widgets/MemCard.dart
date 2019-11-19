import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import '../Classes/cardinfo.dart';


class MemCard extends StatelessWidget {
  CardInfo cardInfo;

  MemCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Container(
        child: Column(children: <Widget>[
          Image.asset(cardInfo.front["image"]),
          Text(cardInfo.front["text"]),],)
          ),

    back: Container(
        child: Column(children: <Widget>[
          Image.asset(cardInfo.back["image"]),
          Text(cardInfo.back["text"]),],)
          ),
          );
  }

}
