import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maincategory/constants.dart';
import 'package:flutter_svg/svg.dart';

class BodyItem extends StatelessWidget {
  BodyItem({super.key});

  List<Widget> items = [
    BodyPageItem(text: "Lunch", image: "assets/lunch.png"),
    BodyPageItem(text: "Breakfast", image: "assets/breakfast.png"),
    BodyPageItem(text: "Dinner", image: "assets/dinner.png"),
    BodyPageItem(text: "Vegan", image: "assets/vegan.png"),
    BodyPageItem(text: "Dessert", image: "assets/dessert.png"),
    BodyPageItem(text: "Drinks", image: "assets/drinks.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: items.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              IconButton(
                icon: Image.asset(
                  "assets/seafood.png",
                  width: double.infinity,
                  height: 148,
                  fit: BoxFit.cover,
                ),
                onPressed: (){
                  context.go('/breakfast');
                },
              ),
              const SizedBox(height: 6),
              Text(
                "Seafood",
                style: TextStyle(
                  color: AppColor.textcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          );
        } else {
          return items[index - 1];
        }
      },
    );
  }
}

class BodyPageItem extends StatelessWidget {
  const BodyPageItem({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
        ),
        SizedBox(height: 6),
        Text(
          text,
          style: TextStyle(
            color: AppColor.textcolor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
