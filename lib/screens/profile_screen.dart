import 'package:flutter/cupertino.dart';
import '../widgets/custom_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(title: 'Profile');
  }
}