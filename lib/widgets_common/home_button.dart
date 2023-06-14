import 'package:flutter/material.dart';
import 'package:test/consts/consts.dart';

Widget homeButton({width, heigth, icon, String? title, onPres}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, heigth).shadowSm.make();
}
