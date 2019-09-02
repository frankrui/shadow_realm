import 'package:flutter/material.dart';

class RecentlyViewedWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RecentlyViewedState();
}

class _RecentlyViewedState extends State<RecentlyViewedWidget> {
  List<String> recentlyViewedCards;

  @override
  void initState() {
    // TODO: Grab from file the recently viewed cards
    recentlyViewedCards = ["Apollousa, Bow of the Goddess", "Ojama King"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: recentlyViewedCards.length,
            itemBuilder: (context, index) {
              final card = recentlyViewedCards[index];

              return ListTile(
                leading: null, // TODO: put image of card here
                title: Text(card),
                onTap: null // TODO: open card widget static view
              );
            },
        ),
    );
  }

}