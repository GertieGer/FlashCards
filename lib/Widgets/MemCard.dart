import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import '../Classes/cardinfo.dart';

class MemCard extends StatelessWidget {
  CardInfo cardInfo;
  MemCard(this.cardInfo);

  Widget cardside(BuildContext context, String image, String text) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        color: Colors.lightBlue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(image),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100.0, fontFamily: "Calistoga"),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front:
            cardside(context, cardInfo.front["image"], cardInfo.front["text"]),
        back: cardside(context, cardInfo.back["image"], cardInfo.back["text"]),
      ),
    );
  }
}
