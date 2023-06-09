import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/activity_models.dart';
import '../widgets/custom_header.dart';
import 'activity_details_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  static const routeName = '/activities';

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = Activity.activities;
    bool isDark = Theme.of(context).brightness == Brightness.dark; 
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeader(title: 'Activities'),
          _ActivitiesBox(
            activities: activities, 
            isDark: isDark),
           ]
        )
    );
  }
}


class _ActivitiesBox extends StatelessWidget {
  const _ActivitiesBox({
    super.key,
    required this.activities,
    required this.isDark,
  });

  final List<Activity> activities;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true, // to avoid the error 
      physics: const NeverScrollableScrollPhysics(), 
      padding: const EdgeInsets.all(10.0), 
      itemCount: 9, 
      crossAxisCount: 2, 
      mainAxisSpacing: 15, 
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Activity activity = activities[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ActivityDetailsScreen(
                  activity: activity)
              )
            );
          },
          child: Column(
            children: [
              Hero( 
                tag: '${activity.id}_${activity.title}', 
                child: Container(
                  height: 200, 
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5.0),
                   image: DecorationImage(
                    image: AssetImage(activity.url), 
                    fit: BoxFit.cover,
                   ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                activity.title, 
                maxLines: 3, 
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color:isDark?Colors.white: Colors.black, 
                  fontWeight: FontWeight.bold,
                )
              )
            ], 
          ),
        );
      }
    );
  }
}

