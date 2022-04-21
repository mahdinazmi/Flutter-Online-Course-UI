import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/util.dart';

import 'popular-course-tile.dart';

class PopularCourses extends StatefulWidget {
  const PopularCourses({
    Key ? key
  }): super(key: key);

  @override
  State < PopularCourses > createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State < PopularCourses > {

  List < Course > courses = [];

  @override
  void didChangeDependencies() {
    provideCourses();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top: getProportionateScreenHeight(15),left: getProportionateScreenWidth(15),right: getProportionateScreenWidth(15)),
      child: Column(
        children: [
          _popularCoursesText(),
          ListView.separated(
          itemCount: courses.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top:getProportionateScreenHeight(20),bottom:getProportionateScreenHeight(15)),
          itemBuilder: (BuildContext context, int index) {
            return PopularCourseTile(course: courses[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getProportionateScreenHeight(10)
            );
          },
        ),
          
        ],
      ),
    );
  }

  Widget _popularCoursesText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Course',
          style: TextStyle(
            color: AppColors.colorTint700,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(18)
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            color: AppColors.colorTint600,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(13)
          ),
        )
      ],
    );
  }

  Future < void > provideCourses() async {
    courses.add(Course(title: 'HTML & CSS', coursePrice: '\$350', teacherName: 'Samanta Yasamin', courseDuration: '1h 35m', numberOfLessons: '17 lesson', courseImage: 'assets/images/coding.jpg', teacherImage: 'assets/images/samanta-yasamin.jpg'));
    courses.add(Course(title: 'Intro to Design System', coursePrice: '\$175', teacherName: 'Joni Iskandar', courseDuration: '1h 23m', numberOfLessons: '11 lesson', courseImage: 'assets/images/design-system.png', teacherImage: 'assets/images/joni-iskandar.webp'));
    courses.add(Course(title: 'Digital Marketing', coursePrice: '\$80', teacherName: 'Asep', courseDuration: '2h 15m', numberOfLessons: '15 lesson', courseImage: 'assets/images/marketing.jpg', teacherImage: 'assets/images/asep.jpg'));
  }
}