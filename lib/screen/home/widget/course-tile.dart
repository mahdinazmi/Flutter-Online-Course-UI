import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/screen/course-detail/course-detail.dart';
import 'package:onlinecourse/util/size/size-config.dart';

class CourseTile extends StatelessWidget {
  final Course ? course;
  const CourseTile({
    Key ? key,
    this.course
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, CourseDetailScreen.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: AppColors.colorTint200,
              blurRadius: 8,
              offset: Offset(4, 8)
            ),
          ],
        ),
        width: getProportionateScreenWidth(220),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              _courseImage(course!),
              SizedBox(height: getProportionateScreenHeight(15)),
              _courseTitleAndPrice(course!),
              SizedBox(height: getProportionateScreenHeight(15)),
              _courseTeacher(course!),
              SizedBox(height: getProportionateScreenHeight(15)),
              _courseDurationInfo(course!)
            ],
          ),
        ),
      ),
    );
  }

  Widget _courseImage(Course course) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(course.courseImage!),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }

  Widget _courseTitleAndPrice(Course course) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          course.title!,
          style: TextStyle(
            color: AppColors.colorTint700,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(14)
          )
        ),
        Text(
          course.coursePrice!,
          style: TextStyle(
            color: AppColors.colorPrimary,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(14)
          )
        ),
      ],
    );
  }

  Widget _courseTeacher(Course course) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(course.teacherImage!),
              fit: BoxFit.cover,
            )
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(8)
        ),
        Text(
          course.teacherName!,
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: getProportionateScreenWidth(12)
          )
        ),
      ],
    );
  }

  Widget _courseDurationInfo(Course course) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          course.courseDuration!,
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: getProportionateScreenWidth(12)
          )
        ),
        SizedBox(
          width: getProportionateScreenWidth(5)
        ),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.colorPrimary,
            shape: BoxShape.circle
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(5)
        ),
        Text(
          course.numberOfLessons!,
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: getProportionateScreenWidth(12)
          )
        ),
      ],
    );
  }
}