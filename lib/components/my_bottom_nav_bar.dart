import 'package:flutter/material.dart';

import '../constant.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: kDefaultPadding,
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 50,
            color: Color(0xFFF5F5F5),
          ),
        ],
      ),


      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: kPrimaryColor),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: kPrimaryColor),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.favorite_border, color: kPrimaryColor),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
