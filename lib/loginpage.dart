import 'package:flutter/material.dart';
import 'package:wahid_project/BottomN%20bar.dart';
import 'package:wahid_project/FORGET%20PASS.dart';
import 'package:wahid_project/forget%20username.dart';
import 'package:wahid_project/signup.dart';

class LoginpageDome extends StatelessWidget {
  LoginpageDome({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController paswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // 👈 Prevent overflow from keyboard
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.dangerous_outlined),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Login Head
            Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Using your email or username and password',
              style: TextStyle(color: Colors.grey),
            ),
            // Email Field
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                label: Text('YOUR EMAIL/USERNAME', style: TextStyle(fontSize: 10)),
                hintText: 'abc@gmail.com',
              ),
            ),
            SizedBox(height: 20),
            // Password Field
            TextField(
              controller: paswordcontroller,
              decoration: InputDecoration(
                label: Text('YOUR PASSWORD', style: TextStyle(fontSize: 10)),
                hintText: '********',
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            SizedBox(height: 40),
            // Login Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (emailcontroller.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Email cannot be empty.')),
                    );
                    return;
                  }
                  if (paswordcontroller.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Password cannot be empty.')),
                    );
                    return;
                  }
                  if (paswordcontroller.text.length < 6) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Password must be 6 or more characters.')),
                    );
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomnbarDome()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 40),
            // Forgot Links & Signup
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => fortgetpass()));
                    },
                    child: Text(
                      'Forget your password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetusernameDome()));
                    },
                    child: Text(
                      'Forget your username?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpDome()),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
