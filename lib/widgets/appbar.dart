import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

commonAppbar(BuildContext context, String title) {
  return AppBar(
    title: Text(
      title,
      style: TT.f14w400Grey,
    ),
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}

dashboardAppbar(BuildContext context) {
  return AppBar(
    title: Image.asset(
      'assets/images/bingoMainLogo.png',
      height: 50,
    ),
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}
