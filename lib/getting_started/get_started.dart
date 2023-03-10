import 'package:e_commerce/getting_started/register.dart';
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
             SizedBox(height: MediaQuery.of(context).size.height/3.5,),
                Container(
                height: MediaQuery.of(context).size.height/5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage("images/getStarted.png"))),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.07,),
        const Center(
          child:  Text("We promise comfort",
          style: TextStyle(
            // color: Colors.grey,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        const Center(
          child: Text("We offer best comfort product for",
          style: TextStyle(
            color: Colors.black54,
          ),
          ),
        ),
        const Center(
          child: Text("you and your family",
          style: TextStyle(
            color: Colors.black54,
          ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        button(
          "Get Started", Colors.black, Colors.white, Colors.black, (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RegisterPage();
          },));
          }
        )
          ],
        ),
      ),
    );
  }
}