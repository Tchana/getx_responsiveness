import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = homePageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case getStartedPageDisplayName:
        return _customIcon(Icons.home_outlined, itemName);
      case homePageDisplayName:
        return _customIcon(Icons.dashboard_outlined, itemName);
      case allCustomersPageDisplayName:
        return _customIcon(Icons.person_outlined, itemName);
      case allReservationsPageDisplayName:
        return _customIcon(Icons.calendar_today_outlined, itemName);
      case allMessagesPageDisplayName:
        return _customIcon(Icons.message_outlined, itemName);
      case allStaffsPageDisplayName:
        return _customIcon(Icons.wallet_travel_outlined, itemName);
      case settingsPageDisplayName:
        return _customIcon(Icons.settings_outlined, itemName);

      default:
        return _customIcon(Icons.home_outlined, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
