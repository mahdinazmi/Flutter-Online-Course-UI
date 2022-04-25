import 'package:flutter/material.dart';
import 'package:onlinecourse/util/util.dart';
import 'my-courses-body.dart';

class MyCoursesScreen extends StatelessWidget {
  static String routeName = '/mycourses';
  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: MyCoursesScreenBody()
    );
  }
}