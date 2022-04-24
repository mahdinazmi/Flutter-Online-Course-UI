import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/course/course.dart';
import 'package:onlinecourse/util/util.dart';
import 'course-lesson-tile.dart';

class CourseLessons extends StatelessWidget {
  final Course ? course;
  const CourseLessons({
    Key ? key,
    this.course
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Lessons',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(14)
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              Text(
                'Review',
                style: TextStyle(
                  color: AppColors.colorTint500,
                  fontSize: getProportionateScreenWidth(14)
                ),
              ),
            ],
          ),
          ListView.separated(
            itemCount: course!.lessons!.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top:getProportionateScreenHeight(20),bottom:getProportionateScreenHeight(60) ),
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 14.0,
            ),
            itemBuilder: (context, index) => CourseLessonTile(lesson: course!.lessons![index], )
          )
        ],
      ),
    );
  }
}