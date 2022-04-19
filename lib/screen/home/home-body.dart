 import 'package:flutter/material.dart';
import 'package:onlinecourse/screen/home/widget/appbar.dart';

class HomeScreenBody extends StatelessWidget {
   const HomeScreenBody({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold (
       body : SafeArea(
         child: Column(
           children: const [
             HomeScreenAppBar()
           ],
         ),
       )
     );
   }
 }