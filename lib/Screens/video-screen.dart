import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#212F3D'),
      appBar: AppBar(
        elevation: 0,
        title: Text('Videos', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}