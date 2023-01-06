import 'dart:async';
import 'package:e_commerce/getting_started/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
       Duration( milliseconds: 2000),
       (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GetStarted();
        },));
       });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
              height: MediaQuery.of(context).size.height/4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage("images/logo_ec.png"))),
      ),
      const SizedBox(height: 10,),
      const Text("COOLTOOL",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),)
           ],
         ),
       ),
    );
  }
}