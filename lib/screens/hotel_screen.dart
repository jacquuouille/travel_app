import 'package:flutter/cupertino.dart';
import '../widgets/custom_header.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  static const routeName = '/hotels';

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(title: 'Hotels');
  }
}