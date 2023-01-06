import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             SizedBox(height: MediaQuery.of(context).size.height/3,),
                Container(
                height: MediaQuery.of(context).size.height/5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage("images/getStarted.png"))),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.08,),
        Center(
          child: const Text("We promise comfort",
          style: TextStyle(
            // color: Colors.grey,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Center(
          child: const Text("We offer best comfort product for",
          style: TextStyle(
            color: Colors.black54,
          ),
          ),
        ),
        Center(
          child: const Text("you and your family",
          style: TextStyle(
            color: Colors.black54,
          ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        button("Get Started", Colors.black, Colors.white, Colors.black)
          ],
        ),
      ),
    );
  }
}