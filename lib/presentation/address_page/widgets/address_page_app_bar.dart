import 'package:flutter/material.dart';
import 'package:fullfill_user_app/globals/colors.dart';
import 'package:fullfill_user_app/globals/screen_size.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: transparent,
    leading: IconButton(
      padding: EdgeInsets.only(left: Screen.width(4)),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        size: Screen.height(2.2),
      ),
    ),
    title: const Text(
      'Deliver to',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    ),
  );
}
