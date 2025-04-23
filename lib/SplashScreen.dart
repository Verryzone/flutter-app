import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/LoginScreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, size: 100, color: Color(0xFFFF4081)),
                Text('MyFavorite', style: TextStyle(fontSize: 50, color: Color(0xFFFF4081), fontFamily: 'SoulSignature'),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
