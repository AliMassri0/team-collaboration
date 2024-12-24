import 'package:flutter/material.dart';
import 'package:senior/pharmacy.dart';
import 'package:senior/pharmacy.dart';

import 'search.dart';

class Info extends StatelessWidget {
  Pharmacy ph;
   Info({required this.ph});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  
                  Image.asset(
                    'assets/images/Path.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: mediaQueryHeight*0.09,
    
                child:
                 Text(ph.name, style: const
                TextStyle(color: Color.fromRGBO(16, 133, 127, 1), fontSize: 40,
                fontWeight: FontWeight.bold ),),
                
              ),
              Container(
                alignment: Alignment.center,
                height: mediaQueryHeight*0.09,
    
                child:
                 Text(ph.location, style:const
                TextStyle(color: Color.fromRGBO(16, 133, 127, 1), fontSize: 40,
                fontWeight: FontWeight.w100
                 ),),
                
              ),
              Container(
                alignment: Alignment.center,
                height: mediaQueryHeight*0.09,
    
                child:
                Text(ph.phonenb, style: const
                TextStyle(color: Color.fromRGBO(16, 133, 127, 1), fontSize: 30,
                fontWeight: FontWeight.w100
                 ),),
                
              ),
              Padding(padding: EdgeInsets.all(mediaQueryHeight*0.03)),
              GestureDetector(
                onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Search()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(16, 133, 127, 1),
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: mediaQueryHeight*0.08,
                  width: mediaQueryWidth*0.7,
                  alignment: Alignment.center,
                  child:
                  
                   const Text(
                     'Search for medicine',
                     style: TextStyle(color: Color.fromRGBO(16, 133, 127, 1),
                     fontSize: 20),
                   )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQueryWidth * 0.01,
                    vertical: mediaQueryHeight * 0.01),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


  
              

  