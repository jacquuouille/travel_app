import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  static const routeName = '/basket';

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark; 
    return Scaffold(
      backgroundColor: isDark ? const Color.fromARGB(255, 69, 66, 66) : const Color.fromARGB(255, 250, 248, 248),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: isDark? Colors.black : Colors.white,
        ),
        title: Text(
          'Basket',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: isDark? Colors.black : Colors.white, 
            fontWeight: FontWeight.bold, 
          ), 
        ), 
        elevation: 1.0,
        backgroundColor: const Color.fromARGB(255, 255, 196, 3),
      ), 
      bottomNavigationBar: const BottomAppBar(),
    );
  }
}


class BottomAppBar extends StatelessWidget {
  const BottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 90,
      width: 40,
      decoration: BoxDecoration(
        color: isDark ? Color.fromARGB(255, 61, 58, 58) : Colors.white, 
        border: Border(
          top: BorderSide(
            width: 2.0, 
            color: isDark ? Color.fromARGB(255, 61, 58, 58): Color.fromARGB(255, 232, 231, 231),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                primary: Color.fromARGB(255, 255, 196, 3), 
              ),
              child: Text(
                "Go to checkout", 
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isDark ? Colors.black : Colors.white, 
                  fontWeight: FontWeight.bold,
                  // fontSize: 15, 
                )
                )
            ),
          ),
        ],
      ),
    );
  }
}