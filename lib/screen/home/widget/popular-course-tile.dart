import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/size/size-config.dart';

class PopularCourseTile extends StatelessWidget {
  final Course ? course;
  const PopularCourseTile({
    Key ? key,
    this.course
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.colorTint400, width: 0.5),

        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(

            children: [
              Flexible(
                child: Row(
                  children: [
                    _courseImage(course!),
                    SizedBox(width: getProportionateScreenWidth(10), ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _courseTitle(course!),
                        SizedBox(height: getProportionateScreenHeight(14), ),
                        _courseTeacher(course!),
                        SizedBox(height: getProportionateScreenHeight(14), ),
                        _courseDurationInfo(course!)
                      ],
                    ),
                  ],
                ),
              ),
              _coursePrice(course!),
              SizedBox(width: getProportionateScreenWidth(10), ),
              Icon(Icons.arrow_forward_ios, size: 18)
            ],
          ),
        ),
      ),
    );
  }

  Widget _courseImage(Course course) {
    return AspectRatio(
      aspectRatio: 1,
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
  Widget _courseTitle(Course course) {
    return Text(
      course.title!,
      style: TextStyle(
        color: AppColors.colorTint700,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenWidth(13)
      )
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

  Widget _coursePrice(Course course) {
    return Text(
      course.coursePrice!,
      style: TextStyle(
        color: AppColors.colorPrimary,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenWidth(14)
      )
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