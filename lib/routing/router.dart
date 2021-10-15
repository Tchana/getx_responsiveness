import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/page/customer/all_customers.dart';
import 'package:flutter_web_dashboard/page/get_started/get_started.dart';
import 'package:flutter_web_dashboard/page/home/home.dart';
import 'package:flutter_web_dashboard/page/message/message.dart';
import 'package:flutter_web_dashboard/page/reservation/reservation.dart';
import 'package:flutter_web_dashboard/page/settings/settings.dart';
import 'package:flutter_web_dashboard/page/staff/staff.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case getStartedRoute:
      return _getPageRoute(GetStartedPage());
    case homeRoute:
      return _getPageRoute(HomePage());
    case allCustomersRoute:
      return _getPageRoute(CustomersPage());
   case allReservationsRoute:
      return _getPageRoute(ReservationPage());
   case allMessagesRoute:
      return _getPageRoute(MessagesPage());
   case allStaffsRoute:
      return _getPageRoute(StaffsPage());
  case settingsRoute:
        return _getPageRoute(SettingsPage());
    default:
      return _getPageRoute(GetStartedPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}