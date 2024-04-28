import 'package:fetch_api/foodstore/all_menu.dart';
import 'package:fetch_api/foodstore/calculator.dart';
import 'package:fetch_api/foodstore/menu_name.dart';
import 'package:fetch_api/foodstore/menu_set.dart';
import 'package:flutter_test/flutter_test.dart';

void main (){

  //Mock All Menu
  final allMenu = AllMenu();

  allMenu.addMenu(MenuSet(name: Menu.Red, price: 50));
  allMenu.addMenu(MenuSet(name: Menu.Green, price: 40));
  allMenu.addMenu(MenuSet(name: Menu.Blue, price: 30));
  allMenu.addMenu(MenuSet(name: Menu.Yellow, price: 50));
  allMenu.addMenu(MenuSet(name: Menu.Pink, price: 80));
  allMenu.addMenu(MenuSet(name: Menu.Purple, price: 90));
  allMenu.addMenu(MenuSet(name: Menu.Orange, price: 120));

  test('test Order All Menu Return 460', (){
    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Red));
    bill.addMenu(allMenu.getMenuByName(Menu.Green));
    bill.addMenu(allMenu.getMenuByName(Menu.Blue));
    bill.addMenu(allMenu.getMenuByName(Menu.Yellow));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Purple));
    bill.addMenu(allMenu.getMenuByName(Menu.Orange));

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 460);
  });

  test('test Order Red,Green,Blue Set Return 120', () {
    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Red));
    bill.addMenu(allMenu.getMenuByName(Menu.Green));
    bill.addMenu(allMenu.getMenuByName(Menu.Blue));

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 120);
  });

  test('test Order Red,Green,Blue Set and use MemberCard(-10%) Return 108', () {
    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Red));
    bill.addMenu(allMenu.getMenuByName(Menu.Green));
    bill.addMenu(allMenu.getMenuByName(Menu.Blue));

    bill.useMemberCard();

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 108);
  });


  test('test Order Orange, Orange, Orange Red (-5%) Of Orange Set Return 392', () {

    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Red));

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 392);
  });

  test('test Pink, Pink, Pink, Red And (-5%) Of Pink and Set Member Card(-10%) Return 250.2', () {

    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Red));

    bill.useMemberCard();

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 250.2);
  });

  test('test Pink 3, Orange 3, Red And (-5%) of Pink and (-5%) of Orange and Member Card(-10%) Return 558', () {

    final bill = Calculator(memberDiscount: 0.1);

    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Pink));
    bill.addMenu(allMenu.getMenuByName(Menu.Orange));
    bill.addMenu(allMenu.getMenuByName(Menu.Red));

    bill.useMemberCard();

    final totalPrice = bill.calculateBill();

    expect(totalPrice, 558);
  });
}
