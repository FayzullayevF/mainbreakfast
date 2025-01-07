import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:maincategory/constants.dart';
import 'package:maincategory/presentations/bodypage.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgoundcolor,
      extendBody: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            "assets/icons/arrow.svg",
          ),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            color: AppColor.appbartextcolor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColor.containercolor,
              borderRadius: BorderRadius.circular(14),
            ),child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: SvgPicture.asset("assets/icons/notification.svg"),
            ),
          ),
          SizedBox(width: 3),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: AppColor.containercolor,
                borderRadius: BorderRadius.circular(14),
              ),child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
            ),
          ),
        ],
      ),
      body:BodyItem(),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/icons/home.svg"),
              SvgPicture.asset("assets/icons/comunity.svg"),
              SvgPicture.asset("assets/icons/categories.svg"),
              SvgPicture.asset("assets/icons/person.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

