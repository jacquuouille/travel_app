import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isOnBoarding = true;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: 
       AppBar(
        title: Text(
          'TravelApp', 
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true, 
        elevation: 0, 
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
              print(Get.isDarkMode);
            },
              icon: Icon(
                Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              )
          ), 
          IconButton(
            onPressed: () {        
            }, 
            icon: const Icon(
              Icons.shopping_bag
            )
          )
        ]
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}