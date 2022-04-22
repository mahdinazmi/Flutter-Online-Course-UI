 import 'package:flutter/material.dart';
 import 'package:flutter_svg/flutter_svg.dart';
 import 'package:onlinecourse/config/theme/theme.dart';
 import 'package:onlinecourse/util/util.dart';


 class CourseDetailScreenBody extends StatelessWidget {
   const CourseDetailScreenBody({ Key ? key }): super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         centerTitle: true,
         automaticallyImplyLeading: false,
         title: Text(
           'Course Details',
           style: TextStyle(
             color: AppColors.colorTint700
           ),
         ),
         backgroundColor: Colors.white,
         elevation: 0,
         actions: [
           _bookmark()
         ],
       ),
       body: SafeArea(
         child: ListView(
           children: const [],
         ),
       )
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
           'assets/icons/bookmark.svg',
           color: AppColors.colorTint600,
           width: getProportionateScreenWidth(25),
           height: getProportionateScreenWidth(25),
         ),
         onPressed: () async {}
       ),
     );
   }
 }