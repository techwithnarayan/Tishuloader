import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_YskJCXgFJb.json'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#ffffff') ,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white)
                ),
                alignment: Alignment.center,
                height: 70,
                child: Text("Welcome", style: TextStyle(color:  Colors.black, fontSize: 40, fontWeight: FontWeight.w500),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/3.5,),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
              child: Text('data'),
            )
          ],
        ),
      ),
    ));
  }
}