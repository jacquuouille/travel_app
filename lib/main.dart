import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:travel_app/screens/activity_screen.dart';
import 'package:travel_app/screens/home_screen.dart';

import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Flutter Travel App UI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const HomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page: () => const ActivityScreen()),
      // ]
    );
  }
}

