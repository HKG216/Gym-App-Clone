import 'package:flutter/material.dart';

import 'SecondPage.dart';


class ThirdPage extends StatelessWidget{
  TextEditingController nameController = TextEditingController();

  String? value;
  ThirdPage({this.value});

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scrollbar(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.blue.shade600,
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 93),
                  const Text('Verify your phone', style: TextStyle(fontSize: 33, fontWeight:  FontWeight.w600),),
                  const SizedBox(height: 21,),
                  Text("Enter the six 6-digit code we sent to \n $value", style: TextStyle(fontSize: 16,color: Colors.black38,),textAlign: TextAlign.center),
                  SizedBox(height: 26,),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        controller: nameController,
                        autocorrect: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'XXX - XXX',
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: null,
                    padding: EdgeInsets.only(left: 125,right: 125, top: 14, bottom: 14),
                    disabledColor: Colors.blue.shade600,
                    shape: StadiumBorder(),
                    child: Text('Verify', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w500),),
                  ),
                  const SizedBox(height: 70,),
                ],
              )
          ),
        ),
      ),
    );
  }
}


