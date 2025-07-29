import 'package:flutter/material.dart';
import 'package:wahid_project/pageview.dart';

class ONBOARDINGDome2 extends StatelessWidget {
   ONBOARDINGDome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 80),
            Center(
              child: Image.asset(
                'assets/Images/Group.png',
                height: 300,
              ),
            ),
             SizedBox(height: 100),
            Text(
              'Discover Daily News',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
             SizedBox(height: 10),
            Text(
              'We bring you\ncloser to the news.',
              style: TextStyle(
                fontSize: 41,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
             SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => PageViweDome(), ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 3,
              ),
              child:  Text(
                'Get Started',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
