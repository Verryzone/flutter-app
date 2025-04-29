import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  final Map<String, String>? data;
  const Profilescreen({super.key, this.data});

  

  @override
  Widget build(BuildContext context) {
    String email = data?['email'] ?? 'tidak ada email';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        leading: const SizedBox.shrink(),
        backgroundColor: Color(0xFFFF4081),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xFFFF4081),
                  child: CircleAvatar(
                    radius: 95,
                    backgroundColor: Color(0xFFFF4081),
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Color(0xFFFF4081)),
                    Text(
                      email,
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 60, 60, 60),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 60, 60, 60),
                  ),
                ),
                const Text(
                  'Boyolali, Jawa Tengah',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 60, 60, 60),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(onPressed: () {

                      }, 
                      child: Text('Change'))
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       PageRouteBuilder(
                      //         pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
                      //         transitionsBuilder: (
                      //           context,
                      //           animation,
                      //           secondaryAnimation,
                      //           child,
                      //         ) {
                      //           return FadeTransition(
                      //             opacity: animation,
                      //             child: child,
                      //           );
                      //         },
                      //       ),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: Color(0xFFFF4081),
                      //     padding: const EdgeInsets.symmetric(
                      //       vertical: 8,
                      //       horizontal: 20,
                      //     ),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(12),
                      //     ),
                      //   ),
                      //   child: const Text(
                      //     'Logout',
                      //     style: TextStyle(color: Colors.white),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
