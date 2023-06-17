import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class TestTable extends StatefulWidget {

  final String code;
 // static const String code = '';

  const TestTable({ Key? key, required this.code}) : super(key: key);

  @override
  _TestTableState createState() => _TestTableState();

}

class _TestTableState extends State<TestTable> {
 // final String code;
   List? _table;

   static  String code = '';

   var stand = 'http://api.football-data.org/v2/competitions/PL/standings';

   Map <String,String> request = {'X-Auth-Token':'8330f37a37924d6ab91df12196e45b91'};



  getTable() async {
    var url = Uri.parse(stand);
    var response = await http.get(
      url,
        headers: request

        // 'http://api.football-data.org/v2/competitions/${widget.code}/standings' as Uri,
        // headers: {'X-Auth-Token': '8330f37a37924d6ab91df12196e45b91'}
    );

   if(response.statusCode == 200){
     String body = response.body;
     Map data = jsonDecode(body);
     List table = data['standings'][0]['table'];
     setState(() {
       _table = table;
     });
   }

  }

  Widget buildTable() {
    List<Widget> teams = [];
    for (var team in _table!) {
      teams.add(
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    team['position'].toString().length > 1
                        ? Text(team['position'].toString() + ' - ')
                        : Text(" " + team['position'].toString() + ' - '),

                    Row(
                      children: [
                    //    team['team']['crestUrl'] == null ?SvgPicture.network(team['team']['crestUrl'],height: 25,width: 25,)   : Image.network(team['team']['crestUrl'], height: 25, width: 25,),

                        SvgPicture.network(team['team']['crestUrl'],height: 25,width: 25,) ,

                        Image.network(team['team']['crestUrl'], height: 25, width: 25,),









                        SizedBox(width: 7,),
                        team['team']['name'].toString().length > 12 ? Text(team['team']['name'].toString().substring(0, 11) + '...') : Text(team['team']['name'].toString()),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(team['playedGames'].toString()),
                    Text(team['won'].toString()),
                    Text(team['draw'].toString()),
                    Text(team['lost'].toString()),
                    Text(team['goalDifference'].toString()),
                    Text(team['points'].toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Column(
      children: teams,
    );
  }

  @override
  void initState() {
    super.initState();
    getTable();
  }

  @override
  Widget build(BuildContext context) {
    return _table == null
        ? Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Color(0xFFe70066),
          ),
        ),
      ),
    )
        : Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     const Color(0xffe84860),
            //     const Color(0xffe70066),
            //   ],
            //   begin: const FractionalOffset(0.0, 0.0),
            //   end: const FractionalOffset(0.0, 1.0),
            //   stops: [0.0, 1.0],
            //   tileMode: TileMode.clamp,
            // )
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Pos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Club',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PL',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'W',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'D',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'L',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'GD',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Pts',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildTable(),
          ],
        ),
      ),
    );
  }
}