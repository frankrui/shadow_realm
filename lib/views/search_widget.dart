import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Form(
          key: _formKey,
          child: Column(
              children: []
          ),
        )
    );
  }
}
