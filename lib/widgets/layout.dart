import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';

import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_dashboard/widgets/top_nav.dart';

import 'large_screen.dart';



class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar:  topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )
      ),
    );
  }
}
