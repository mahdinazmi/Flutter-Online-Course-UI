import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/util.dart';

import 'course-description.dart';

class CourseInformation extends StatelessWidget {
  const CourseInformation({
    Key ? key,
    this.course
  }): super(key: key);

  final Course ? course;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20), right: getProportionateScreenWidth(20), left: getProportionateScreenHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                course!.title.toString(),
                style: TextStyle(
                  color: AppColors.colorTint700,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(20)
                ),
              ),
              Row(
                children: [
                  Text(
                    course!.coursePrice.toString(),
                    style: TextStyle(
                      color: AppColors.colorAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(18)
                    ),
                  ),
                  Text(
                   '/lifetime',
                    style: TextStyle(
                      color: AppColors.colorTint500,
                      fontSize: getProportionateScreenWidth(15)
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height:getProportionateScreenHeight(18)),
          _courseTeacher(),
          SizedBox(height:getProportionateScreenHeight(30)),
          CourseDescription(course: course,)
        ],
      ),
    );
  }

  Widget _courseTeacher() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(course!.teacherImage!),
              fit: BoxFit.cover,
            )
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(8)
        ),
        Text(
          course!.teacherName!,
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: getProportionateScreenWidth(12)
          )
        ),
      ],
    );
  }
}