import 'package:e_commerce/getting_started/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SplashScreen()
    )
    );
}
button(String name, Color bgc, Color txtc, Color bdrc, Function()? nav){
return ElevatedButton(onPressed: nav,
style: ButtonStyle(backgroundColor: MaterialStateProperty.all(bgc),
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: bdrc)
    )
  )
),
child: Padding(
  padding: const EdgeInsets.symmetric(vertical: 15),
  child:   Text(name,
  
  style: TextStyle(
    color: txtc,
    fontSize: 18,
  
  ),),
),

);
}
