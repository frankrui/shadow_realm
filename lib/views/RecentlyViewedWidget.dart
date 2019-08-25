import 'package:flutter/material.dart';

class RecentlyViewedWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RecentlyViewedState();
}

class _RecentlyViewedState extends State<RecentlyViewedWidget> {
  List<String> recentlyViewedCards = ["Apollousa, Bow of the Goddess", "Ojama King"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: recentlyViewedCards.length,
            itemBuilder: (context, index) {
              final card = recentlyViewedCards[index];

              return ListTile(
                title: Text(card),
              );
            },
        ),
    );
  }

}