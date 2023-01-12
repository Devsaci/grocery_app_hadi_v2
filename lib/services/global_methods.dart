import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/inner_screens/on_sale_screen.dart';

class GlobalMethods {
  static navigateTo(
      {required BuildContext context, required String routeName}) {
    Navigator.pushNamed(context, OnSaleScreen.routeName);
  }
}
