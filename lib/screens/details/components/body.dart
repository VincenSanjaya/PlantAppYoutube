import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Nike Lebron 19\n",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "USA",
                      style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300))
                ])),
                Spacer(),
                Text(
                  "\$440",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20)))),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Description",
                  style: TextStyle(color: kPrimaryColor, fontSize: 16),
                ),
              ))
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
