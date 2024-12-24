import 'package:flutter/material.dart';

import 'fakeChat.dart';


class Chattt extends StatelessWidget {
  const Chattt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: mediaQueryHeight*0.05, horizontal: mediaQueryWidth*0.05),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(16, 133, 127, 1),
                        fontSize: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(16, 133, 127, 1),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.72,
                child:
         ListView.builder(
            itemCount: chat.length,
            itemBuilder: (listViewContext, index) {

              return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(16, 133, 127, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            chat[index].image,
                            fit: BoxFit.fill,
                          ),
                          padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Padding(padding: EdgeInsets.fromLTRB(0, 70 , 0, 0)),
                            Text(
                              chat[index].name,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${chat[index].dateTime.hour}:${chat[index].dateTime.minute}'),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.circle),
                              color: const Color.fromRGBO(16, 133, 127, 1),
                              iconSize: 20,
                            ),
                          ]),
                    )
                  ]));
            }))]))));
  }
}