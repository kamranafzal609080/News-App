import 'package:flutter/material.dart';
import 'package:wahid_project/loginpage.dart';
import 'package:wahid_project/wellcome.dart';


class languageDOME extends StatelessWidget {
  const languageDOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: 80,),
           Image.asset('assets/Images/khan.png',
             height: 300,

           ),
             SizedBox(height: 100,),
             Text('Which language you prefer to read the\nnews?',
               style: TextStyle(fontSize: 20),
             ),
             SizedBox(height: 30,),
             Container(
               height: 70,
               width: 500,
               decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.3),
                 borderRadius: BorderRadius.circular(40),
                 border: Border.all(color: Colors.blueGrey, width: 3),

             ),
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 16.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       'Language',
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.blue,
                       ),
                     ),
                     Icon(
                       Icons.arrow_circle_down,
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 100),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 // Skip Button
                 ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>wellconeDome()));
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.grey[300],
                   ),
                   child: Text('Skip', style: TextStyle(color: Colors.black,fontSize: 20)),
                 ),
                 ElevatedButton(
                   onPressed: () {
                     Navigator.push(
                       context,MaterialPageRoute(builder: (context)=>wellconeDome()),);
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                   ),
                   child: Text('Done',style: TextStyle(fontSize: 20,color: Colors.black),),
                 ),
               ],
             ),
           ],
         ),
       ),
     ),
    );
  }
}
