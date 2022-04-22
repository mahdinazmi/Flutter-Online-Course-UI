import 'package:flutter/material.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/util.dart';
import 'course-detail-body.dart';

class CourseDetailScreen extends StatelessWidget {
  static String routeName = '/coursedetail';
  final Course ? course;
  const CourseDetailScreen({
    this.course,
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: CourseDetailScreenBody(course: course,)
    );
  }
}