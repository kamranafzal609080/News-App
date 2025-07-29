import 'package:flutter/material.dart';


class AccountDome extends StatelessWidget {
  const AccountDome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Setting'),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Raleway",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'NAME',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
                SizedBox(height: 15),
                   TextField(
                     decoration: InputDecoration(
                       label: Text(
                           'USERNAME',
                         style: TextStyle(fontSize: 10),
                          ),
                     ),
                   ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'EMAIL ADDRESS',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'MOBILIE NUMBER',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'BIRTHDAY',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'GENDER',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'CONUTRY',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'PHONE NUMBER',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'TIMEZONE',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    ' LOGIN',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
