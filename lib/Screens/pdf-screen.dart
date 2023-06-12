import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#212F3D'),
      appBar: AppBar(
        elevation: 0,
        title: Text('PDF', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}