import 'package:flutter/material.dart';

class facebook extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.blue.shade600,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              width: 100,
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/768px-Facebook_Logo_%282019%29.png'),
            ),
            SizedBox(height: 20),
            Text("facebook login", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.blue.shade700),),
            SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 65, right: 65),
          child: const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
              isDense: true,
              hintText: "Email or phone",
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                child: Icon(Icons.person, color: Colors.blue,),
              ),

            ),),
        ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: const TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                  isDense: true,
                  hintText: "Password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                    child: Icon(Icons.password, color: Colors.blue,),
                  ),
                ),),
            ),
            SizedBox(height: 24,),
            SizedBox(
              width: 267,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login Now",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Gym Application Auoth \nwith Facebook",textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}