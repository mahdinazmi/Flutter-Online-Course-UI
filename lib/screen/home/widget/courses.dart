import 'package:flutter/material.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/screen/home/widget/course-tile.dart';
import 'package:onlinecourse/util/util.dart';

class Courses extends StatefulWidget {
  const Courses({
    Key ? key
  }): super(key: key);

  @override
  State < Courses > createState() => _CoursesState();
}

class _CoursesState extends State < Courses > {

  List < Course > courses = [];

  @override
  void didChangeDependencies() {
    provideCourses();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.25,
      child: Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
        color: Colors.transparent,
        child: ListView.separated(
          itemCount: courses.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(15),
          itemBuilder: (BuildContext context, int index) {
            return CourseTile(course: courses[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: getProportionateScreenWidth(10)
            );
          },
        ),
      ),
    );
  }

  Future < void > provideCourses() async {
    courses.add(Course(title: 'UI/UX Design', coursePrice: '\$150', teacherName: 'Samanta Yasamin', courseDuration: '1h 15m', numberOfLessons: '12 lesson', courseImage: 'assets/images/ui-ux-design.jpg', teacherImage: 'assets/images/samanta-yasamin.jpg',sliderImages: ['assets/images/ui-ux-design.jpg','assets/images/coding.jpg','assets/images/marketing.jpg'],courseDescription: 'The UI/UX Design Specialization brings a design centric approach to user interface and user experience design, and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone.'));
    courses.add(Course(title: 'HTML & CSS', coursePrice: '\$250', teacherName: 'Alexander', courseDuration: '2h 10m', numberOfLessons: '20 lesson', courseImage: 'assets/images/coding.jpg', teacherImage: 'assets/images/alexander.jpg',sliderImages: ['assets/images/ui-ux-design.jpg','assets/images/coding.jpg','assets/images/marketing.jpg'],courseDescription: 'The UI/UX Design Specialization brings a design centric approach to user interface and user experience design, and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone.'));
    courses.add(Course(title: 'Digital Marketing', coursePrice: '\$80', teacherName: 'Asep', courseDuration: '2h 15m', numberOfLessons: '15 lesson', courseImage: 'assets/images/marketing.jpg', teacherImage: 'assets/images/alexander.jpg',sliderImages: ['assets/images/ui-ux-design.jpg','assets/images/coding.jpg','assets/images/marketing.jpg'],courseDescription: 'The UI/UX Design Specialization brings a design centric approach to user interface and user experience design, and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone.'));
  }
}