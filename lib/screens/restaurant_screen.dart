import 'package:flutter/cupertino.dart';
import '../widgets/custom_header.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  static const routeName = '/restaurant';

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(title: 'Restaurants');
  }
}