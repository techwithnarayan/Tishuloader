import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Screens/about-screen.dart';
import 'Screens/home-screen.dart';
import 'Screens/pdf-screen.dart';
import 'Screens/picture-screen.dart';
import 'Screens/video-screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#212F3D'),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
elevation: 0,
        title: Text('TISHULOADER', style: TextStyle(letterSpacing: 3.0, fontWeight: FontWeight.w800, fontSize: 25),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: HexColor('#212F3D'),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Image.asset('assets/images/logo.png', fit: BoxFit.cover,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              // titleAlignment: ListTileTitleAlignment.center,
              title: Text('Home', style: TextStyle(color: Colors.white),),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
              
            ),
             ListTile(
              leading: Icon(Icons.image),
              // titleAlignment: ListTileTitleAlignment.center,
              title: Text('Photos', style: TextStyle(color: Colors.white),),
              iconColor: Colors.white,
              onTap: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PictureScreen()));
              },
              
            ),
             ListTile(
              leading: Icon(Icons.video_file),
              // titleAlignment: ListTileTitleAlignment.center,
              title: Text('Videos', style: TextStyle(color: Colors.white),),
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VideoScreen()));
              
              },
              
            ),
             ListTile(
              leading: Icon(Icons.picture_as_pdf),
              // titleAlignment: ListTileTitleAlignment.center,
              title: Text('PDF', style: TextStyle(color: Colors.white),),
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PdfScreen()));
              },
              
              
            ),
             ListTile(
              
              leading: Icon(Icons.info),
              
              // titleAlignment: ListTileTitleAlignment.center,
              title: Text('About', style: TextStyle(color: Colors.white),),
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutScreen()));
              },
              
            ),
           
          ],
        )
      ),
      body: HomeScreen(),
      
    );
  }
}
