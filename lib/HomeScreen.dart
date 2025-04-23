import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/ProfileColorChange.dart';
import 'package:my_first_flutter_app/ProfileScreen.dart';

class Homescreen extends StatelessWidget {
  final Map<String, String>? data;
  const Homescreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    String email = data?['email'] ?? 'tidak ada email';
    String password = data?['password'] ?? 'tidak ada email';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        leading: const SizedBox.shrink(),
        backgroundColor: Color(0xFFFF4081),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite, size: 100, color: Color(0xFFFF4081)),
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xFFFF4081),
                      fontFamily: 'SoulSignature',
                    ),
                  ),
                ],
              ),
              Text(
                email,
                style: const TextStyle(fontSize: 20, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              ElevatedButton(

                onPressed: () {
                  Map<String, String> data = {'email': email, 'password': password};

                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => ProfileColorChange(data: data),
                      transitionsBuilder: (
                        context,
                        animation,
                        secondaryAnimation,
                        child,
                      ) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4081),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.person, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
