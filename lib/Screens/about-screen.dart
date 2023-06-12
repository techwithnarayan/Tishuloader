import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#212F3D'),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'About Us',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 50,
                ),
                // Image.asset("assets/images/logo.png", fit: BoxFit.cover, height: 120,),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red),
                        //  child: Image(image: AssetImage(assetName)),
                        height: 80,
                        width: 80,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text("Narayan Vishwkarma",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600)),
                              Text(
                                "------------------------------------------",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Flutter Developer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400))
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/github-logo.png"),
                    ),
                    onTap: (){
                      launchUrl(
                        Uri.parse('https://github.com/techwithnarayan'),
                        mode: LaunchMode.externalApplication

                      );
                    } ,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
