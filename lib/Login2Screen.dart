import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/HomeScreen.dart';

class Login2screen extends StatefulWidget {
  const Login2screen({super.key});

  @override
  State<Login2screen> createState() => _Login2screenState();
}

class _Login2screenState extends State<Login2screen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool tampilPassword = false;

  ShowPassword() {
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Icon(
                    //   Icons.person,
                    //   size: 60,
                    //   color: Colors.blue,
                    // ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontFamily: 'SoulSignature',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email, color: Colors.blue),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock, color: Colors.blue),
                  suffixIcon: IconButton(
                    icon: Icon(tampilPassword ? Icons.visibility_off : Icons.visibility),
                    onPressed: ShowPassword,
                  ),
                ),
                obscureText: tampilPassword,
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if (_passwordController.text != '123123123') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Password salah! Coba lagi.'),
                      ),
                    );
                    return;
                  }

                  Map<String, String> data = {
                    'email' : _emailController.text,
                    'password' : _passwordController.text,
                  };

                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder:(context, animation, secondaryAnimation) => Homescreen(data: data),
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
                  print(_emailController.text);
                  print(_passwordController.text);
                  // Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Login', style: TextStyle(color: Colors.white),)),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}