import 'package:flutter/material.dart';

class AccountPage2 extends StatelessWidget {
  const AccountPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          menuItem(Icons.info_outline, "About"),
          menuItem(Icons.lock, "Privacy"),
          menuItem(Icons.article, "Terms"),
          menuItem(Icons.send, "Share this App"),
          menuItem(Icons.star, "Rate this App"),
          menuItem(Icons.facebook, "Follow on Facebook"),
          menuItem(Icons.travel_explore, "Follow on Twitter"),
          menuItem(Icons.camera_alt, "Follow on Instagram"),
        ],
      ),
    );
  }

  Widget menuItem(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black54),
          SizedBox(width: 16),
          Text(title, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
