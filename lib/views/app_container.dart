import 'package:flutter/material.dart';

import 'package:shadow_realm/views/recently_viewed_widget.dart';
import 'package:shadow_realm/views/search_widget.dart';
import 'package:shadow_realm/views/settings_widget.dart';
import 'package:shadow_realm/constants/app_constants.dart';

class AppContainer extends StatefulWidget {
  AppContainer({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  int _selectedIndex;
  List<Widget> _tabViews;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = AppConstants.DEFAULT_TAB;
    _tabViews = [
      RecentlyViewedWidget(),
      SearchWidget(),
      SettingsWidget(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _tabViews[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cached),
            title: Text(AppConstants.RECENTLY_VIEWED),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(AppConstants.SEARCH),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            title: Text(AppConstants.SETTINGS),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}