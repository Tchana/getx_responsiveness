import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  final Widget _menu;

  NavDrawer(this._menu);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.fromLTRB(0.0, 80, 0.0, 0.0),
      child: Drawer(
        child: _menu,
      ),
    );
  }
}
