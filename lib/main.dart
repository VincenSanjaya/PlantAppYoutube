import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor,
          fontFamily: 'Roboto',
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DetailsScreen(),
    );
  }
}