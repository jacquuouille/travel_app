import 'package:flutter/cupertino.dart';
import '../widgets/custom_header.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({super.key});

  static const routeName = '/flight';

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(title: 'Flights');
  }
}