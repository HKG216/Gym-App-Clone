import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gymapp/ThirdPage.dart';

import 'SecondPage.dart';

class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState() => _SecondPageState();
}
class _SecondPageState extends State<SecondPage> {
  String? value;
  final _formKey = GlobalKey<FormState>();

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
                  const Text('Enter your phone', style: TextStyle(fontSize: 33, fontWeight:  FontWeight.w600),),
                  const SizedBox(height: 21,),
                  const Text('we will send you 6 digit SMS code\n to verify your phone number', style: TextStyle(fontSize: 16,color: Colors.black38,),textAlign: TextAlign.center),
                  SizedBox(height: 26,),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                          autocorrect: true,
                          keyboardType: TextInputType.number,
                          inputFormatters:<TextInputFormatter> [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (text){
                            value = text;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 11, right: 3, top: 0, bottom: 14),
                            errorStyle: TextStyle(fontSize: 9, height: 0.3),
                            border: OutlineInputBorder(),
                            hintText: 'Phone Number',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage(value: value)),
                        );
                      };
                      },
                    color: Colors.blue,

                    padding: EdgeInsets.only(left: 125,right: 125, top: 14, bottom: 14),
                    shape: StadiumBorder(),
                    child: Text('Next', style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
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

