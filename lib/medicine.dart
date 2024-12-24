import 'package:flutter/material.dart';
import 'fakemedicine.dart';

class Dawa extends StatelessWidget {
  const Dawa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: 
        
       ListView.builder(
      itemCount: dawa.length,
      itemBuilder: (listViewContext, index){
         TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
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
                    keyboardType: TextInputType.emailAddress,
                  );
        return
         Container(
        height: mediaQueryHeight*0.2,
      decoration: BoxDecoration(
      border: Border.all(
      color: const Color.fromRGBO(16, 133, 127, 1),
      
    ),
         ),
          
          child: Stack(
            
            children: [
              Row(
                children: [
                      Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Padding( padding: EdgeInsets.all(mediaQueryHeight*0.3)),
                          Text(
                   dawa[index].name,
                   style: const TextStyle(fontSize: 30,
                   color: Color.fromRGBO(16, 133, 127, 1)),
                          ),
                        ],
                      ),
       ],),
       Container(
         padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
         child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                         //crossAxisAlignment: CrossAxisAlignment.center,
                         
                          children: [
 
                            IconButton(onPressed: (){},
                             icon: const ImageIcon(AssetImage('assets/images/check.png')),
                              iconSize: 50,
                            
                             ),
                             IconButton(onPressed: (){},
                             icon: const ImageIcon(AssetImage('assets/images/x.png')),
                             iconSize: 40,
                            
                             ),
         ]),
       )])
        );
    })));}}