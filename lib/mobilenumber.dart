import 'package:flutter/material.dart';

class MobilenumberDome extends StatelessWidget {
  MobilenumberDome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.close),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 30),
             Text(
              'Your mobile\nnumber',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20),
             Text(
              'YOUR CURRENT PASSWORD',
              style: TextStyle(fontSize: 10, letterSpacing: 1),
            ),
             SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: Row(
                children: [
                   Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      '+92',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration:  InputDecoration(
                        hintText: 'Enter your number',
                        border: InputBorder.none, // <-- no underline here
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:  EdgeInsets.symmetric(horizontal: 120, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child:  Text(
                  'Update',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
