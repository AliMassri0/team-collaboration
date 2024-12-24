import 'package:flutter/material.dart';
import 'package:senior/home.dart';
import 'package:senior/navigationbar.dart';
import 'fakemedicine.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: const Color.fromRGBO(16, 133, 127, 1),
         leading:   IconButton(onPressed: (){
           showSearch(context: context,
           delegate: CustomSearchDelegate(),);
         }, icon:
         const Icon(Icons.search,
         color: Colors.white,),),

         title: const Text('Search'),
                   actions: [
                     IconButton(onPressed: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyNavBar()));
                     }, icon:
                      const Icon(Icons.clear,
                      color: Colors.white,),),
            
                   ]
       ),
      
        body: ListView.builder(
          itemCount: dawa.length,
          itemBuilder: (context, index) {
            return Container(
          height: 100,
            decoration: BoxDecoration(
            border: Border.all(
            color: const Color.fromRGBO(16, 133, 127, 1),
            width: 1,
          ),
         ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(dawa[index].name,
                    style: const TextStyle(
                             color: Color.fromRGBO(16, 133, 127, 1),
                             fontSize: 30,
                             ),),
                    
                  ),
                ],
              ),
            );
          },
        ),
      );
    
  
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Panadol',
    'Adol',
    'Maxilase',
    'Motilium',
    'Gravol',
    'Paracetemol',
  ];

  static get index => null;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: const Icon(Icons.clear))
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return  IconButton (
      icon: const Icon(Icons.arrow_back),
      onPressed:(){
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
   List<String> matchQuery = [];
   for (var dawa in searchTerms) {
     if(dawa.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(dawa);
     }
   };
   return ListView.builder(
     itemCount: matchQuery.length,
     itemBuilder: (context, index){
       var result = matchQuery[index];
       return ListTile(
         title: Text(result),
       );
     },
     );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
   for (var dawa in searchTerms) {
     if(dawa.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(dawa);
     }
   };
    return ListView.builder(
     itemCount: matchQuery.length,
     itemBuilder: (context, index){
       var result = matchQuery[index];
       return ListTile(
         title: Text(result),
       );
     },
     );
  }
  
}

