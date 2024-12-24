import 'package:flutter/material.dart';
import 'login.dart';

class Reset extends StatelessWidget {
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
          
            //SizedBox(width: mediaQueryWidth, height: mediaQueryHeight*0.2),
          
                Center(
                  child: SizedBox(
                   //width: mediaQueryWidth*0.8,
                   height: mediaQueryHeight*0.2,
                   child:
                  const Text('Reset Password',style: TextStyle(
                    color: Color.fromRGBO(16, 133, 127, 1), fontSize: 40, fontWeight: FontWeight.bold,
                     ),),
                  ),
                ),
               
                SizedBox(
                  
                  width: mediaQueryWidth*0.8,
                  height: mediaQueryHeight*0.12,
                
                  child:  TextFormField(
                    decoration: InputDecoration(
                      hintText: "New Password",
                      labelStyle: const TextStyle(
                        
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(16, 133, 127, 1),
                          fontSize: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide( width: 1,
                         color: Color.fromRGBO(16, 133, 127, 1),),
                         borderRadius: BorderRadius.circular(20),
                         
                      )
                    ),
                     validator: (value){
                          if (value!.isEmpty){
                            return 'Weak Password';
                          }
                          else{
                            return null;
                          }
                        },
                  )
                ),
                 SizedBox(
                  
                  width: mediaQueryWidth*0.8,
                  height: mediaQueryHeight*0.25,
                
                  child:  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelStyle: const TextStyle(
                        
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(16, 133, 127, 1),
                          fontSize: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide( width: 1,
                         color: Color.fromRGBO(16, 133, 127, 1),),
                         borderRadius: BorderRadius.circular(20),
                         
                      )
                    ),
                     validator: (value){
                          if (value!.isEmpty){
                            return 'Please Enter the same password you enter above';
                          }
                          else{
                            return null;
                          }
                        },
                  )
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login()));},
                ),
              ]
          
                      ),
          ),
                  ),
                ),
    );
  }
}