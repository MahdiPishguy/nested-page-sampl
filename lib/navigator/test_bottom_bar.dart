import 'package:flutter/material.dart';
import 'package:fluttercustomnavigation/navigator/extension.dart';

class TestBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      color: Colors.indigo[400],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () => Navigator.of(context).pushNamed(Page.screenProfile.route),
            child: Text('Dashboard'),
          ),
          RaisedButton(
            onPressed: () => Navigator.of(context).pushNamed(Page.screenProfile.route),
            child: Text('Profile'),
          ),
          RaisedButton(
            onPressed: () => Navigator.of(context).pushNamed(Page.screenProfile.route),
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}