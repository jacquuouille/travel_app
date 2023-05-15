import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:travel_app/screens/activity_screen.dart';
import 'package:travel_app/screens/flight_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/hotel_screen.dart';
import 'package:travel_app/screens/restaurant_screen.dart';
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
      // initialRoute: '/activities', 
      // routes: {
      //   ActivityScreen.routeName: (context) => const ActivityScreen(), 
      //   HotelScreen.routeName: (context) => const HotelScreen(), 
      //   FlightScreen.routeName: (context) => const FlightScreen(), 
      //   RestaurantScreen.routeName: (context) => const RestaurantScreen(), 
      // },
      getPages: [
        GetPage(name: '/activities', page: () => const ActivityScreen(), transition: Transition.leftToRight), 
        GetPage(name: '/hotels', page: () => const HotelScreen(), transition: Transition.leftToRight), 
      ] 
    );
  }
}

