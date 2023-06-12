import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PictureScreen extends StatefulWidget {
  const PictureScreen({super.key});

  @override
  State<PictureScreen> createState() => _PictureScreenState();
}

class _PictureScreenState extends State<PictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#212F3D'),
      appBar: AppBar(
        elevation: 0,
        title: Text('Photos', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}