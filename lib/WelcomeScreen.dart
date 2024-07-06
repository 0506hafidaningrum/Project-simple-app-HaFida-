import 'package:e_commerce/LoginScreen.dart';
import 'package:e_commerce/RegScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF4C53A5),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40,),
              child: Image(image: AssetImage('assets/logo3.png'),),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
               onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const loginScreen()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('SIGN IN', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const RegScreen()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('SIGN UP', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                ),),),
              ),
            ),
        const Spacer(),
         const Text('Login with Social Media', style: TextStyle(
          fontSize: 17,
          color: Colors.white
         )),
         const SizedBox(height: 10,),
         const Image(image: AssetImage('assets/medsos.png'))
          ],
          
          ),
      ),
    );
  }
}