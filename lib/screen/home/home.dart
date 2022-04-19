import 'package:flutter/material.dart';
import 'package:onlinecourse/screen/home/home-body.dart';
import 'package:onlinecourse/util/util.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: HomeScreenBody()
    );
  }
}