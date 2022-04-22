import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/model/model.dart';
import 'package:onlinecourse/util/util.dart';

class ImagesSlider extends StatelessWidget {
  const ImagesSlider({
    Key ? key,
    this.course
  }): super(key: key);

  final Course ? course;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(13)),
        child: PageView.builder(
          itemCount: course!.sliderImages!.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          controller: PageController(viewportFraction: 0.88, keepPage: true, initialPage: 1),
          itemBuilder: (BuildContext context, int i) {
            return Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(course!.sliderImages![i], fit: BoxFit.cover, height: double.infinity, width: double.infinity, )
                  ),
                  i == 1 ? Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(15), bottom: getProportionateScreenHeight(14)),
                      height: getProportionateScreenHeight(35),
                      width: getProportionateScreenWidth(120),
                      child: Center(
                        child: _courseDurationInfo(course!)
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ) : Container()
                ],
              )
            );
          }
        ),
      ),
    );
  }
  Widget _courseDurationInfo(Course course) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          course.courseDuration!,
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: getProportionateScreenWidth(11)
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
            fontSize: getProportionateScreenWidth(11)
          )
        ),
      ],
    );
  }
}