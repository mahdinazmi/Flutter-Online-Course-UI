import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';
import 'package:onlinecourse/screen/screen.dart';

class Nav extends StatefulWidget {
  static String routeName = '/nav';
  const Nav({ Key ? key }): super(key: key);
  @override
  State < Nav > createState() => _NavState();
}

class _NavState extends State < Nav > with SingleTickerProviderStateMixin {

  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          onTap: (index) {},
          tabs: const [
            Tab(icon: Icon(Icons.menu_rounded)),
            Tab(icon: Icon(Icons.piano)),
            Tab(icon: Icon(Icons.car_rental_rounded)),
            Tab(icon: Icon(Icons.settings_rounded)),
          ],
        ),
      ),
    );
  }
}
