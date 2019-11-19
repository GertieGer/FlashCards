import 'package:flutter/material.dart';
import '../Widgets/MemCard.dart';
import '../Classes/cardinfo.dart';

class CardPage extends StatelessWidget {
  
  MemCard demoCard = new MemCard(new CardInfo(["","Front"], ["","Back"]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose Item'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Avatar'),
      ),
      body: demoCard,
    );
  }
}
