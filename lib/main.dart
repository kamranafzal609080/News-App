import 'package:flutter/material.dart';
import 'package:wahid_project/BottomN%20bar.dart';
import 'package:wahid_project/FORGET%20PASS.dart';
import 'package:wahid_project/ONBOARDING.dart';
import 'package:wahid_project/PicDome.dart';
import 'package:wahid_project/Sarach%20Screen.dart';
import 'package:wahid_project/Trending.dart';
import 'package:wahid_project/Vidoesscreen.dart';
import 'package:wahid_project/account.dart';
import 'package:wahid_project/accountsreen.dart';
import 'package:wahid_project/changepassword.dart';
import 'package:wahid_project/create%20password.dart';
import 'package:wahid_project/forget%20username.dart';
import 'package:wahid_project/homescreen.dart';
import 'package:wahid_project/proflieaccount.dart';

void main(){

    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ONBOARDINGDome(),
    );
  }
}