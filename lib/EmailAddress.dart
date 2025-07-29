import 'package:flutter/material.dart';

class YourEmailDome extends StatefulWidget {
  const YourEmailDome({super.key});

  @override
  State<YourEmailDome> createState() => _YourEmailDomeState();
}

class _YourEmailDomeState extends State<YourEmailDome> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newEmailController = TextEditingController();
  TextEditingController confirmEmailController = TextEditingController();

  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your email address',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            if (showError)
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Create password to update your email address',
                  style: TextStyle(color: Colors.red[800]),
                ),
              ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                label: Text(
                  'YOUR CURRENT PASSSWORD',
                  style: TextStyle(fontSize: 10),
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: newEmailController,
              decoration: InputDecoration(
                label: Text(
                  'YOUR NEW EMAIL ADDRESS',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: confirmEmailController,
              decoration: InputDecoration(
                label: Text(
                  'CONFIRM YOUR NEW EMAIL ADDRESS',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (passwordController.text.trim().isEmpty) {
                    setState(() {
                      showError = true;
                    });
                  } else {
                    setState(() {
                      showError = false;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Email updated successfully')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Update',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
