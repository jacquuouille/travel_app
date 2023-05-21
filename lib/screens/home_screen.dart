import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/activity_screen.dart';
import 'package:travel_app/screens/profile_screen.dart';
import '../widgets/custom_bar.dart';
import 'flight_screen.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOnBoarding = true;
  int _selectedTab = 0;

  final List _pages = const [
    ActivityScreen(), 
    HotelScreen(),
    FlightScreen(),
    ProfileScreen(),
  ];

  _changedTab(int index) {
    setState( () {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, 
          end: Alignment.topRight, 
          colors: [
            Theme.of(context).colorScheme.primary, 
            Theme.of(context).colorScheme.secondary, 
          ],
        ),
      ),
      child: Scaffold(
        appBar: const CustomAppBar(), 
        body: _pages[_selectedTab],
        bottomNavigationBar: 
          isOnBoarding 
            ? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mountains.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45, 
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  left: 30, 
                  right: 30, 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hidden Treasures of Italy", 
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 65, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white,
                      )
                    ), 
                    ElevatedButton(
                      onPressed: () {
                        setState( () {
                          isOnBoarding = false;
                        });
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, 
                        padding: EdgeInsets.zero, 
                        elevation: 0.0, 
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_circle_right_outlined, 
                            size: 50, 
                            color: Colors.white, 
                          ), 
                          const SizedBox(width: 10.0), 
                          Text(
                            "Explore Now", 
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white
                            )
                          )
                        ],
                      )
                    )
                  ]
                ),
              )
            ) 
            : BottomNavigationBar( 
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedTab, 
                showUnselectedLabels: false, 
                selectedItemColor: Get.isDarkMode ? Colors.white : Colors.black,
                onTap: (index) => _changedTab(index),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_activity), 
                    label: 'Activity'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.hotel), 
                    label: 'Hotels'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.flight_takeoff), 
                    label: 'Flights'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.restaurant), 
                    label: 'Restaurants'
                  ),
                ]
              )
      ),
    );
  }
}

















































