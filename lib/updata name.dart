import 'package:flutter/material.dart';
import 'package:wahid_project/emailConfarm.dart';

class UpdataNameDome extends StatelessWidget {
  const UpdataNameDome({super.key});

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
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'Your name',
                  style: TextStyle(
                      fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                 ),
                 SizedBox(height: 20),

               Row(
                 children: [
                   Expanded(
                     child: TextField(
                       decoration: InputDecoration(
                         label: Text(
                           'YOUR FIRST NAME',
                           style: TextStyle(fontSize: 10),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(width: 10),
                   Expanded(
                     child: TextField(
                       decoration: InputDecoration(
                         label: Text(
                           'YOUR LAST NAME',
                           style: TextStyle(fontSize: 10),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 15),
               Center(
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>EmailconfarmDome()));
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                     padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30),
                     ),
                   ),
                   child: Text('Updata',style: TextStyle(color: Colors.white),),
                 ),
               ),
                    ]
                   )
                 )
        )
    );
  }
}
