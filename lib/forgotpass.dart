import 'package:flutter/material.dart';
import 'resetpassword.dart';

class Fpass extends StatelessWidget {
   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: mediaQueryWidth,
          
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding( padding: EdgeInsets.all(mediaQueryHeight*0.07)),
                Center(
                  child: SizedBox(
                   height: mediaQueryHeight*0.15,
                   child: const
                  Text('Forgot Password',style: TextStyle(
                    color: Color.fromRGBO(16, 133, 127, 1), fontSize: 40, fontWeight: FontWeight.bold,
                     ),),
                  ),
                ),
                SizedBox(
                  width: mediaQueryWidth*0.7,
                  height: mediaQueryHeight*0.2,
                  child: const Text('In order to reset your password, please enter your email you used for this account',
                  style: TextStyle(fontSize: 17 ,color: Color.fromRGBO(16, 133, 127, 1), ))
                ),
                SizedBox(
                  
                  width: mediaQueryWidth*0.8,
                  height: mediaQueryHeight*0.25,
                
                  child:  TextFormField(
                        
                        decoration: InputDecoration(
                          hintText: "EMAIL",
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(16, 133, 127, 1),
                              fontSize: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1,
                             color: Color.fromRGBO(16, 133, 127, 1),),
                             borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return 'Please enter a valid E-mail address';
                          }else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                ),
                  ElevatedButton(
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(16, 133, 127, 1),
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.3,
                        vertical: mediaQueryHeight * 0.03,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () { 
                    if (!_formKey.currentState!.validate()){
                        return;
                      }
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Reset()));},
                ),
              ]
          
                      ),
          ),
                  ),
                ),
    );
  }
}