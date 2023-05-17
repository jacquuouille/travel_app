import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/activity_models.dart';
import '../widgets/clip_container.dart';

class ActivityDetailsScreen extends StatelessWidget {
  final Activity activity;
  const ActivityDetailsScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark; 

    return Scaffold(
          appBar: AppBar(
            title: Text(
              'Destination', 
              style: TextStyle(
                color: isDark?Colors.white: Colors.black, 
                fontWeight: FontWeight.bold), 
            ), 
            backgroundColor: Colors.transparent, 
            elevation: 0.0, 
          ),
        body: Hero( 
          tag: '${activity.id}_${activity.title}', 
          child: SafeArea( 
            child: ClipContainer(
              activity: activity
              ),
           ),
          )
    );
  }
}

