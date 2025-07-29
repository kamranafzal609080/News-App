import 'package:flutter/material.dart';
import 'package:wahid_project/account2page.dart';

class AccountPage1 extends StatelessWidget {
  const AccountPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account")),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AccountPage2()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Darrell Chan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("abc@example.com", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.info_outline),
                ],
              ),
            ),
          ),

          Divider(),

          // Menu List
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12),
              children: [
                menuItem(Icons.notifications, "Notifications"),
                menuItem(Icons.palette, "Theme"),
                menuItem(Icons.bookmark, "My Bookmark"),
                menuItem(Icons.person, "My Publisher"),
                menuItem(Icons.language, "My Language"),
                menuItem(Icons.category, "My Category"),
                menuItem(Icons.info_outline, "About"),
                menuItem(Icons.share, "Share this App"),
              ],
            ),
          ),
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
