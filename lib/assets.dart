import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('assets image'),
      ),
      body: Image.asset(
        'assets/image/kam.jpeg',
        height: 100,
        width: 400,
        fit: BoxFit.fill,
      ),
    );
  }
}