import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomHeader extends StatelessWidget {
  final String title;

  const CustomHeader({
    required this.title, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold, 
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                 ),
                ),
              const SizedBox(height: 4.0), 
              Text(
                "Enjoy your trip in Italy", 
                style: Theme.of(context).textTheme.bodyLarge!.copyWith( 
                  color: Get.isDarkMode ? Colors.white : const Color.fromARGB(255, 83, 82, 82), 
                  letterSpacing: 1,
                )
              )
              ],
            ),
        ),
        );
  }
}