import 'package:flutter/material.dart';
import 'package:wahid_project/EmailAddress.dart';
import 'package:wahid_project/profile.dart';


class EmailconfarmDome extends StatefulWidget {
   EmailconfarmDome({super.key});

  @override
  State<EmailconfarmDome> createState() => _EmailconfarmDomeState();
}

class _EmailconfarmDomeState extends State<EmailconfarmDome> {
  TextEditingController codecontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text('Confrim your email\naddress',style: TextStyle(fontSize: 30),),
               SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: codecontroller,
                        decoration: InputDecoration(
                          label: Text(
                            'CONFIRMATION CODE',
                            style: TextStyle(fontSize: 10),
                          ),
                          suffixIcon: Icon(Icons.dangerous_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text('Please check your email svarup03@gmail.com to\nconfrim your registration'),
              Center(
                child: ElevatedButton(onPressed: (){
                  if (codecontroller.text.length < 4) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter a valid code')),
                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>profileDome()));
                    return;
                  }
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                      EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Continue',style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 40,),
              Center(
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding:
                      EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Resand',style: TextStyle(color: Colors.black),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
