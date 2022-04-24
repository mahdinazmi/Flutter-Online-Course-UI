import 'package:onlinecourse/model/model.dart';

class Course {
  final String ? title;
  final String ? teacherName;
  final String ? teacherImage;
  final String ? courseImage;
  final String ? coursePrice;
  final String ? numberOfLessons;
  final String ? courseDuration;
  final String ? courseDescription;
  final List<String> ? sliderImages;
  final List<Lesson> ? lessons;
  Course({this.title,this.teacherName,this.teacherImage,this.coursePrice,this.numberOfLessons,this.courseDuration,this.courseImage,this.sliderImages,this.courseDescription , this.lessons});
}