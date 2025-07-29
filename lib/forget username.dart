import 'package:flutter/material.dart';

class ForgetusernameDome extends StatelessWidget {
  const ForgetusernameDome({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forget your\nusername?',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Give your email address you used during registration',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'YOUR NAME',
                        style: TextStyle(fontSize: 10),
                      ),
                      suffixIcon: Icon(Icons.dangerous_outlined),
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
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.lock_open, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Recover',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                    ),
                  ),

                ]
            )
        )
    );
  }
}
