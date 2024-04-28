import 'package:fetch_api/foodstore/menu_name.dart';
import 'package:fetch_api/foodstore/menu_set.dart';

class AllMenu {
  List<MenuSet> menus = [];

  void addMenu(MenuSet menu) {
    menus.add(menu);
  }

  MenuSet getMenuByName(Menu name) {
    return menus.firstWhere((menu) => menu.name == name);
  }
}
