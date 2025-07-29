import 'package:flutter/material.dart';


class createpasswordDome extends StatelessWidget {
  const createpasswordDome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_forward),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'YOUR CURRENT PASSSWORD',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'CONFRIM YOUR NEW PASSSWORD',
                    style: TextStyle(fontSize: 10),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child:ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding:
                    EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:
                  Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )

            ]
        ),
      ),
    );
  }
}
