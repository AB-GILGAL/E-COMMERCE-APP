import 'package:e_commerce/create_account/verification.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              const Text("Forgot Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
              const Text("Select which contact details to be used to"),
              const Text("reset your password"),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  FormItem("Email", emailController, "ab@email.com"),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  FormItem("Phone number", phoneController, "+233 59 164 1611",),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  button("Continue", Colors.black, Colors.white, Colors.black, (){ Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const VerificationPage()));})
                ],
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}