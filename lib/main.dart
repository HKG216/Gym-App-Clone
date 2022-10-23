import 'package:flutter/material.dart';
import 'package:gymapp/facebook.dart';

import 'SecondPage.dart';

void main() {
  runApp(const gym());
}

class gym extends StatelessWidget{
  const gym({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}


class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
                height: 120
            ),
            SizedBox(
                height: 270,
                width: 270,
                child: Image.network('https://img.freepik.com/free-vector/vector-elements-vintage-fitness-gym-labels-sport-fitness-gym-bodybuilding-dumbbell-element-barbell-label-illustration_1284-47795.jpg?w=2000')),
            const SizedBox(height: 48,),
            const Text('Welcome to\nOur Fitness App', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900), textAlign: TextAlign.center,),
            const SizedBox(height: 23,),
            const Text('Please login before you proceed \n to track your activity', style: TextStyle(fontSize: 19,color: Colors.black54 ,fontWeight: FontWeight.normal), textAlign: TextAlign.center,),
            const SizedBox(height: 47,),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );                       },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.only(left: 65,right: 65, top: 14, bottom: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Login With Phone', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: 272,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => facebook()),
                  );                       },
                  icon: Icon(Icons.facebook),
                  label: Text("Login with facebook",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                          )
                      )
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
