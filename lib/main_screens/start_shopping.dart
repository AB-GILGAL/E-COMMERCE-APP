import 'package:e_commerce/create_account/start_shopping.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/main_screens/home.dart';
import 'package:flutter/material.dart';

class StartShopping extends StatelessWidget {
  const StartShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            const Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.check_rounded,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const Center(
              child: Text(
                "Yayy!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Registration complete! We're excited to "
                "have you on board. Get ready to have the best shopping experience.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            button(
                "Start Shopping",
                Colors.black,
                Colors.white,
                Colors.black,
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )))
          ],
        ),
      ),
    );
  }
}
