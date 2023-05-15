import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/activity_models.dart';
import '../widgets/custom_header.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  static const routeName = '/activities';

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = Activity.activities;
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeader(title: 'Activities'),
          MasonryGridView.count(
            shrinkWrap: true, // to avoid the error 
            physics: const NeverScrollableScrollPhysics(), 
            padding: const EdgeInsets.all(10.0), 
            itemCount: 9, 
            crossAxisCount: 2, 
            itemBuilder: (context, index) {
              Activity activity = activities[index];
              return Column(
                children: [
                  Container(
                    height: 200, 
                    decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(50.0),
                     image: DecorationImage(
                      image: AssetImage(activity.url)
                     )
                    )
                  )
                ], 
              );
            }
          ),
           ]
        )
    );
  }
}

