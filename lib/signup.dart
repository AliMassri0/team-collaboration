import 'package:flutter/material.dart';
import 'package:senior/navigationbar.dart';

class SignUp extends StatelessWidget {
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
          
                SizedBox(
                  width: mediaQueryWidth*1,
                  height: mediaQueryHeight*0.3,
                  child: Image.asset('assets/images/task.png',)),
                  Padding( padding: EdgeInsets.all(mediaQueryHeight*0.01)),
                  //SizedBox(height: mediaQueryHeight*0.03),
          
                const Text('Sign Up',style: TextStyle(
                  color: Color.fromRGBO(16, 133, 127, 1), fontSize: 40,
                   ),),
                   Padding( padding: EdgeInsets.all(mediaQueryHeight*0.03)),
                   //SizedBox(height: mediaQueryHeight*0.05),
                
                SizedBox(
                  width: mediaQueryWidth*0.85,
                  height: mediaQueryHeight*0.12,
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
                  ),
                ),
                
                SizedBox(
                 width: mediaQueryWidth*0.85,
                  height: mediaQueryHeight*0.12,
                  child:  TextFormField(
                    decoration: InputDecoration(
                      hintText: "PASSWORD",
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
                          return 'Weak Password at least 6 characters';
                        }else {
                          return null;
                        }
                      },
                  ),
                ),
                 SizedBox(
                  width: mediaQueryWidth*0.85,
                  height: mediaQueryHeight*0.12,
                  child:  TextFormField(
                    decoration: InputDecoration(
                      hintText: "CONFIRM PASSWORD",
                      labelStyle:  const TextStyle(
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
                          return 'The password should be the same as above';
                        }else {
                          return null;
                        }
                     }
                  ),
                ),

                ElevatedButton(
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(16, 133, 127, 1),
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.37,
                        vertical: mediaQueryHeight * 0.03,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                      if (!_formKey.currentState!.validate()){
                        return;
                      }
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyNavBar()));
                  },
                ),
              
             
                ],
              ),
          ),
            

          ),
        ),
      
    );
  }
}