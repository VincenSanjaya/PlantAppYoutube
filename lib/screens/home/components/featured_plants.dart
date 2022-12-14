import 'package:flutter/material.dart';

import '../../../constant.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          FeaturedPlantCard(
            image: "assets/sepatu-1.png",
            press: () {},
          ),
          FeaturedPlantCard(
            image: "assets/nike_lebron_19.jpg",
            press: () {},
          ),
          FeaturedPlantCard(
            image: "assets/nike_lebron_18.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.image, required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )
        ),
      ),
    );
  }
}
