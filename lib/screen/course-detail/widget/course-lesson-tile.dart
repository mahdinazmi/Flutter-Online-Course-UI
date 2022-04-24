import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/size/size-config.dart';

class CourseLessonTile extends StatelessWidget {
  final Lesson ? lesson;
  const CourseLessonTile({
    Key ? key,
    this.lesson
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(60),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.colorTint500, width: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/play-circle.svg',
                color: AppColors.colorAccent,
                width: getProportionateScreenWidth(30),
                height: getProportionateScreenWidth(30),
              ),
              SizedBox(width: getProportionateScreenWidth(15)),
              Text(
                lesson!.lessonName.toString(),
                style: TextStyle(
                  color: AppColors.colorTint600,
                  fontSize: getProportionateScreenWidth(14)
                ),
              ),
            ],
          ),
          Text(
            lesson!.lessonDuration!,
            style: TextStyle(
              color: AppColors.colorTint700,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(14)
            ),
          ),
        ],
      ),
    );
  }
}