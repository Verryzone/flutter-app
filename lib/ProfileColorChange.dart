import 'package:flutter/material.dart';

class ProfileColorChange extends StatefulWidget {
  final Map<String, String>? data;
  const ProfileColorChange({super.key, this.data});

  @override
  State<ProfileColorChange> createState() => _ProfileColorChangeState();
}

class _ProfileColorChangeState extends State<ProfileColorChange> {
  bool isDarkMode = false;


  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    String email = widget.data?['email'] ?? 'tidak ada email';

    return Scaffold(
      backgroundColor: isDarkMode ? const Color.fromARGB(255, 37, 37, 37) : Colors.white,
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        leading: const SizedBox.shrink(),
        backgroundColor: Color(0xFFFF4081),
        actions: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Switch(value: isDarkMode, onChanged: (bool value) {
              setState(() {
                isDarkMode = value;
              });
            }, 
            activeColor: Colors.white,),
          )
        ],
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
                        color: isDarkMode ? Colors.white : Color.fromARGB(255, 60, 60, 60),
                      ),
                    ),
                  ],
                ),
                 Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? Colors.white : Color.fromARGB(255, 60, 60, 60),
                  ),
                ),
                 Text(
                  'Boyolali, Jawa Tengah',
                  style: TextStyle(
                    fontSize: 12,
                    color: isDarkMode ? Colors.white : Color.fromARGB(255, 60, 60, 60),
                  ),
                ),
                Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 16),
                    //   child: ElevatedButton(onPressed: () {
                    //     toggleTheme();
                    //   }, 
                    //   child: Text('Change'))
                    // ),
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