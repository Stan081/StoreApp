import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

AppBar buildAppBar(Color appBarColor, Color sColor,VoidCallback back) {
  BuildContext context;
  return AppBar(
    backgroundColor: appBarColor,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: sColor,
      ),
      onPressed: back,
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: sColor,
          )),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: sColor,
          )),
      const SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
