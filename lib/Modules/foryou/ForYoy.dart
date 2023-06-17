import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/player_Model.dart';
import 'package:football/core/services.dart';
import 'package:http/http.dart' as http;

import '../../core/cubit.dart';
import '../../core/states.dart';

class ForyouScreen extends StatefulWidget {
  const ForyouScreen({Key? key}) : super(key: key);

  @override
  State<ForyouScreen> createState() => _ForyouScreenState();
}

class _ForyouScreenState extends State<ForyouScreen> {
//   var listSearch = [];
//   String searchUrl = "https://v3.football.api-sports.io/players?id=276&season=2019";
//   Future getData()async{
//     var listSearch = [];
//     var url = Uri.parse(searchUrl);
//     var responce = await http.get(url);
//     var responceBody = jsonDecode(responce.body);
//     for(int i=0 ; i<responceBody.length;i++){
//      listSearch.add(responceBody[i]["player"]["name"]);
//     }
//
//   }
//
//   @override
//   void initState(){
//     getData();
//     super.initState();
// }


  Search search = Search();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
        return Scaffold(

            body :Column(
              crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: TextFormField(
                    controller: controller,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Find your Player",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 18),

                    ),
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    onChanged: (search){



                    },
                    onTap: (){
                 //     DataSearch(list: listSearch);
                    },

                  ),
                ),
              ],
            ),
        );




  }
}

class DataSearch extends SearchDelegate<dynamic>{

  List<dynamic>?list;
  DataSearch({ this.list});

  @override
  List<Widget>? buildActions(BuildContext context) {
   IconButton(
     onPressed: (){},
     icon: Icon(Icons.clear),
   );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: (){
        close(context, null);
      },
      icon: Icon(Icons.arrow_back_ios_new_outlined),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: list?.length,
        itemBuilder: (context,i){
        return Text(list?[i]);
        }
    );
  }


}












