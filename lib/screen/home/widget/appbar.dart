import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/util/util.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({ Key ? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        padding: EdgeInsets.only(right: getProportionateScreenWidth(20), left: getProportionateScreenWidth(20), top: getProportionateScreenHeight(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _userName(),
                Row(
                  children: [
                    _notification(),
                    SizedBox(width: getProportionateScreenWidth(15)),
                    _avatar()
                  ],
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _searchField(),
                _setting()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _userName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome',
          style: TextStyle(
            color: AppColors.colorTint500,
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(8), ),
        Text(
          'Mahdi Nazmi',
          style: TextStyle(
            color: AppColors.colorTint700,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(20),
          ),
        )
      ],
    );
  }

  Widget _notification() {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.colorTint400)
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: IconButton(
          icon: Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/notification.svg',
                color: AppColors.colorTint600,
                width: getProportionateScreenWidth(25),
                height: getProportionateScreenWidth(25),
              ),
              Container(
                width: getProportionateScreenWidth(10),
                height: getProportionateScreenWidth(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.colorAccent,
                ),
              )
            ],
          ),
          onPressed: () async {}
        ),
      ),
    );
  }

  Widget _avatar() {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/profile-image.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }

  Widget _setting() {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: AppColors.colorTint200,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/setting.svg',
          color: AppColors.colorPrimary,
          width: getProportionateScreenWidth(25),
          height: getProportionateScreenWidth(25),
        ),
        onPressed: () async {}
      ),
    );
  }

  Widget _searchField() {
    return SizedBox(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(260),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: getProportionateScreenWidth(14), color: AppColors.colorTint700),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.colorTint200,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Search any course',
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 13, bottom: 13),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              color: AppColors.colorTint700,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
      ),
    );
  }
}