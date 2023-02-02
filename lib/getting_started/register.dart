import 'package:e_commerce/create_account/sign_in.dart';
import 'package:e_commerce/create_account/sign_up.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/landingPage.jpg")
                )
            ),
          ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Browse",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.55,),
                   const Text("Make your shopping",
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    const Text("enjoyable with us",
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                        button("Sign In", Colors.white, Colors.black, Colors.white,(){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LogInPage();
          },));
          }),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,),
           button("Sign Up", Colors.transparent, Colors.white, Colors.white,(){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SignUpPage();
          },));
          })
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}