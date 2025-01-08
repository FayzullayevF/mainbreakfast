import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:maincategory/constants.dart';
import 'package:maincategory/presentations/categorydetailbody.dart';

class CategoryDetailItem extends StatelessWidget {
  const CategoryDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgoundcolor,
      extendBody: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset("assets/icons/arrow.svg"),
        ),
        centerTitle: true,
        title: Text(
          "Breakfast",
          style: TextStyle(
            color: AppColor.appbartextcolor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: AppColor.containercolor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          ),
          SizedBox(width: 3),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: AppColor.containercolor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: SvgPicture.asset("assets/icons/share.svg"),
            ),
          ),
        ],
      ),
      body: BreakfastBody(),
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
              IconButton(
                icon: SvgPicture.asset("assets/icons/home.svg"),
                onPressed: () {
                  context.go('/');
                },
              ),
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
