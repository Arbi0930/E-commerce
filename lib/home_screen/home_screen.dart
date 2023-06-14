import 'package:flutter/material.dart';
import 'package:test/consts/consts.dart';
import 'package:test/consts/list.dart';
import 'package:test/widgets_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanythin,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    sliderList[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 8))
                      .make(),
                );
              },
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => homeButton(
                  heigth: context.screenHeight * 0.15,
                  width: context.screenWidth / 2.5,
                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                  title: index == 0 ? todayDeal : flashsale,
                ),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: secondSliderList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    secondSliderList[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 8))
                      .make(),
                );
              },
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) => homeButton(
                  heigth: context.screenHeight * 0.15,
                  width: context.screenWidth / 4,
                  icon: index == 0
                      ? icTopCategories
                      : index == 1
                          ? icBrands
                          : icTopSeller,
                  title: index == 0
                      ? topCategories
                      : index == 1
                          ? brand
                          : topSellers,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
