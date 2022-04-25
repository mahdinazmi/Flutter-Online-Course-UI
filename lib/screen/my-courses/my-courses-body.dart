import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/util/util.dart';

import 'widget/courses.dart';

class MyCoursesScreenBody extends StatefulWidget {
  const MyCoursesScreenBody({
    Key ? key
  }): super(key: key);

  @override
  State < MyCoursesScreenBody > createState() => _MyCoursesScreenBodyState();
}

class _MyCoursesScreenBodyState extends State < MyCoursesScreenBody > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Container(
          margin: EdgeInsets.only(top:getProportionateScreenHeight(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Text(
                'Course Details',
                style: TextStyle(
                  color: AppColors.colorTint700,
                  fontSize: getProportionateScreenWidth(17)
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
               Text(
                '4 courses',
                style: TextStyle(
                  color: AppColors.colorPrimary,
                  fontSize: getProportionateScreenWidth(13)
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          _bookmark()
        ],
      ),
      body: Courses(),
    );
  }

  Widget _bookmark() {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.colorTint400)
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: AppColors.colorTint600,
          width: getProportionateScreenWidth(25),
          height: getProportionateScreenWidth(25),
        ),
        onPressed: () async {}
      ),
    );
  }
}