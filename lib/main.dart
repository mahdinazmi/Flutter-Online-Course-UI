import 'package:flutter/material.dart';
import 'config/routes/routes.dart';
import 'screen/nav/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Nav.routeName,
      routes: routes,
    );
  }
}
