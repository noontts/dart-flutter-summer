import 'package:fetch_api/foodstore/menu_name.dart';
import 'package:fetch_api/foodstore/menu_set.dart';

class Calculator {
  List<MenuSet> menus= [];
  bool _useMemberCard = false;
  double orderPrice = 0;
  double memberDiscount = 0;

  Calculator({required this.memberDiscount});

  void addMenu(MenuSet menu){
    menus.add(menu);
  }

  void useMemberCard(){
    _useMemberCard = true;
  }

  double calculateBill (){
    int orangeCount = 0;
    int pinkCount = 0;
    int greenCount = 0;
    double orangePrice = 0;
    double pinkPrice = 0;
    double greenPrice = 0;

    double totalDiscount = 0;

    _useMemberCard ? totalDiscount += memberDiscount : null;

    for (var menu in menus) {
      orderPrice += menu.price;

      if (menu.name == Menu.Orange) {
        orangeCount++;
        orangePrice += menu.price;
      } else if (menu.name == Menu.Pink) {
        pinkCount++;
        pinkPrice += menu.price;
      } else if (menu.name == Menu.Green) {
        greenCount++;
        greenPrice += menu.price;
      }
    }

    discount(orangeCount, orangePrice);
    discount(pinkCount, pinkPrice);
    discount(greenCount, greenPrice);

    double totalPrice = orderPrice - (orderPrice * totalDiscount);

    return double.parse(totalPrice.toStringAsFixed(2));
  }

  void discount(int menuCount, double menuPrice) {
      const int doublePromotion = 2;

      if (menuCount >= doublePromotion) {
      orderPrice -= (menuPrice * 0.05);
    }
  }
}
