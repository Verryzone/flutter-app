
import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({
    super.key,
    this.gambar = 'assets/images/dump.png'
  });
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Color.fromARGB(255, 109, 68, 255),
      child: CircleAvatar(
        radius: 95,
        backgroundColor: Color.fromARGB(255, 109, 68, 255),
        backgroundImage: AssetImage(gambar),
      ),
    );
  }
}