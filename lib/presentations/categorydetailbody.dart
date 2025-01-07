import 'package:flutter/material.dart';
import 'package:maincategory/constants.dart';
import 'package:flutter_svg/svg.dart';

class BreakfastBody extends StatelessWidget {
  const BreakfastBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                "assets/breakfastpage.png",
                width: 356,
                height: 281,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 356,
              height: 62,
              decoration: const BoxDecoration(
                color: AppColor.appbartextcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Pancake & Cream",
                        style: TextStyle(
                          color: AppColor.textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      SvgPicture.asset("assets/icons/starwhite.svg"),
                      SizedBox(width: 4),
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColor.textcolor,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset("assets/icons/view.svg"),
                      SizedBox(width: 2),
                      Text(
                        "2.273",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColor.textcolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset("assets/josh_ryan_chef.png"),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "@josh-ryan",
                      style: TextStyle(
                        color: AppColor.appbartextcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Josh Ryan-Chef",
                      style: TextStyle(
                        color: AppColor.textcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  padding: EdgeInsets.only(left: 23),
                  width: 109,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColor.containercolor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    "Following",
                    style: TextStyle(
                      color: AppColor.appbartextcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ":",
                  style: TextStyle(
                    color: AppColor.appbartextcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Details",
                  style: TextStyle(
                    color: AppColor.appbartextcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset("assets/icons/clockwhite.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "45 min",
                  style: TextStyle(
                    color: AppColor.textcolor,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fluffy pancakes served with silky whipped cream, a classic "
                  "breakfast indulgence perfect for a leisurely morning treat.",
              style: TextStyle(
                color: AppColor.textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ingredient",
              style: TextStyle(
                color: AppColor.appbartextcolor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IngredientText(text: "1 cup all-purpose flour"),
                  IngredientText(text: "2 tablespoons granulated sugar"),
                  IngredientText(text: "1 teaspoon baking powder"),
                  IngredientText(text: "1/2 teaspoon baking soda"),
                  IngredientText(text: "1/4 teaspoon salt"),
                  IngredientText(text: "1 cup buttermilk (or regular milk)"),
                  IngredientText(text: "1 large egg"),
                  IngredientText(text: "2 tablespoons unsalted butter, melted"),
                  IngredientText(text: "Additional butter or oil for cooking"),
                ]),
            SizedBox(
              height: 15,
            ),
            Text(
              "6 Easy Steps",
              style: TextStyle(
                color: AppColor.appbartextcolor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Containers(text:  "1. Lorem ipsum dolor sit amet, consectetur adipiscing"
                " elit. Etiam pellentesque aliquet augue. "
            ),
            SizedBox(height: 6,),
            Containertwo(text: "2. Phasellus faucibus aliquam tincidunt. Ut et elementum "
                "quam. Proin mi felis, dignissim at elit id, ullamcorper mattis est."
            ),
            SizedBox(height: 6,),
            Containers(text:  "3. Nunc molestie orci in mauris pretium ullamcorper. Vivamus"
                " et gravida felis. Nam bibendum libero turpis, ut facilisis justo hendrerit in."
            ),
            SizedBox(height: 6,),
            Containertwo(text: "4. Donec euismod magna est, quis blandit leo eleifend vitae. "
                "Maecenas ac luctus tortor, vel condimentum enim."
            ),
            SizedBox(height: 6,),
            Containers(text:  "5. Morbi non commodo erat. Aliquam id massa aliquet, porttitor dui "
                "at, commodo mi. Aliquam et semper nisl. Morbi sit amet aliquet tellus."
            ),
            SizedBox(height: 6,),
            Containertwo(text: "6. Nam varius, diam in finibus congue, turpis eros lacinia nulla, vitae"
                " rutrum dolor dui at elit. Vestibulum id viverra felis, non gravida odio."
            ),
          ],
        ),
      ),
    );
  }
}

class IngredientText extends StatelessWidget {
  const IngredientText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.textcolor,
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: 356,
      height: 81,
      decoration: BoxDecoration(
        color: AppColor.ingredientcontainer1,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(text,
        style: TextStyle(
          color: AppColor.ingredienttextcolor,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class Containertwo extends StatelessWidget {
  const Containertwo({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: 356,
      height: 81,
      decoration: BoxDecoration(
        color: AppColor.ingredientcontainer2,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(text,
        style: TextStyle(
          color: AppColor.ingredienttextcolor,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}