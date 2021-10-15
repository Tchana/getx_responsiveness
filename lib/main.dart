import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/page/404/error.dart';
import 'package:flutter_web_dashboard/page/login/login_page.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/menu_controller.dart';
import 'controllers/navigation_controller.dart';


void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: loginRoute,
      unknownRoute: GetPage(name: '/not-found', page: () => PageNotFound(), transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () {
          return SiteLayout();
        }),
        GetPage(name: loginRoute, page: () => LoginPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        // scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            }
        ),
        primarySwatch: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
}
