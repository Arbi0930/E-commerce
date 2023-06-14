import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/consts/consts.dart';
import 'package:test/consts/list.dart';
import 'package:test/home_screen/home.dart';
import 'package:test/views/auth_screen/sign_screen.dart';
import 'package:test/widgets_common/applogo_widget.dart';
import 'package:test/widgets_common/bg_widget.dart';
import 'package:test/widgets_common/custom_textfield.dart';
import 'package:test/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Нэврэх хэсэг $appname".text.fontFamily(bold).white.size(22).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassowrd.text.make(),
                  ),
                ),
                5.heightBox,
                ourButton(
                    color: redColor,
                    textColor: whiteColor,
                    title: logins,
                    onPress: () {
                      Get.to(() => const Home());
                    }).box.width(context.screenWidth - 70).make(),
                5.heightBox,
                createaccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    color: lightgolden,
                    title: signUp,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => SignupScreen());
                    }).box.width(context.screenWidth - 70).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          SocialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
            5.heightBox,
          ],
        ),
      ),
    ));
  }
}
