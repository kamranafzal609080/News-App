import 'package:flutter/material.dart';
import 'package:wahid_project/onboarding%202.dart';


class ONBOARDINGDome extends StatefulWidget {
  const ONBOARDINGDome({super.key});

  @override
  State<ONBOARDINGDome> createState() => _ONBOARDINGDomeState();
}

class _ONBOARDINGDomeState extends State<ONBOARDINGDome> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> ONBOARDINGDome2 ()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Center(
    child: Padding(
      padding:  EdgeInsets.all(100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150,),
              Image.asset('assets/Images/N.png',
              ),
          SizedBox(height: 100,),
          Text('Newzler',
            style: TextStyle(
              fontSize: 41,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),

          ),
          SizedBox(height: 100,),
          CircularProgressIndicator(
            color: Colors.blue,
          )
            ]
      ),
    ),
  ),
),
    );
  }
}
