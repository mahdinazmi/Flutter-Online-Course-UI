import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/screen/screen.dart';
import 'package:onlinecourse/util/util.dart';

class Nav extends StatefulWidget {
  static String routeName = '/nav';
  const Nav({
    Key ? key
  }): super(key: key);
  @override
  State < Nav > createState() => _NavState();
}

class _NavState extends State < Nav > with SingleTickerProviderStateMixin {

  late final TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: < Widget > [
          HomeScreen(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          unselectedLabelColor: Colors.grey,
          labelColor: AppColors.colorPrimary,
          indicatorColor: AppColors.colorPrimary,
          labelPadding: EdgeInsets.only(bottom: 5),
          enableFeedback: false,
          indicatorSize: TabBarIndicatorSize.label,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: currentIndex == 0 ? AppColors.colorPrimary : AppColors.colorTint400,
                width: getProportionateScreenWidth(19),
                height: getProportionateScreenWidth(19),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/document.svg',
                color: currentIndex == 1 ? AppColors.colorPrimary : AppColors.colorTint400,
                width: getProportionateScreenWidth(19),
                height: getProportionateScreenWidth(19),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/shopping-cart.svg',
                color: currentIndex == 2 ? AppColors.colorPrimary : AppColors.colorTint400,
                width: getProportionateScreenWidth(19),
                height: getProportionateScreenWidth(19),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                color: currentIndex == 3 ? AppColors.colorPrimary : AppColors.colorTint400,
                width: getProportionateScreenWidth(19),
                height: getProportionateScreenWidth(19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
