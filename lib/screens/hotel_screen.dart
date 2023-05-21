import 'package:flutter/material.dart';
import '../widgets/custom_header.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  static const routeName = '/hotels';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
           body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const CustomHeader(
                  title: "Hotels"
                ),
                Container()
             ],
           ),
          );
      }
}