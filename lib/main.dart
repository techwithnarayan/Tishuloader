import 'package:flutter/material.dart';

import 'Home_Page.dart';

void main() {
  runApp(const TishuLoader());
}

class TishuLoader extends StatefulWidget {
  const TishuLoader({super.key});

  @override
  State<TishuLoader> createState() => _TishuLoaderState();
}

class _TishuLoaderState extends State<TishuLoader> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
} 
    

     
       