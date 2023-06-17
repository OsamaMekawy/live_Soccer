import 'dart:convert';

import 'package:football/Models/teams_Models.dart';
import 'package:football/Modules/test/model_fixture.dart';
import 'package:http/http.dart';
//import 'package:soccer_tutorial/soccermodel.dart';

class SoccerApi {
  //now let's set our variables
  //first : let's add the endpoint URL
  // we will get all the data from api-sport.io
  // we will just change our endpoint
  //the null means that the match didn't started yet
  //let's fix that
  final String apiUrl =
      "https://v3.football.api-sports.io/fixtures?season=2022&league=39";

  static const headers = {


  'Content-Type':'application/json',
  'x-apisports-key':'2a1edea81bd47e94b86076d948bc6220'
  };

  //Now we will create our method
  //but before this we need to create our model

  //Now we finished with our Model
  //  Future<List<SoccerMatch>>
  getAllMatches() async {
    var url = Uri.parse(apiUrl);
    var res = await get(url, headers: headers);
   // var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
     Map body = jsonDecode(res.body);
      List matchesList = body['response'];
     // print("Api service: ${body}"); // to debug
      List<SoccerMatch> matches = matchesList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();

      return matches;

    }
  }
}

class SoccerApiTeams {
  //now let's set our variables
  //first : let's add the endpoint URL
  // we will get all the data from api-sport.io
  // we will just change our endpoint
  //the null means that the match didn't started yet
  //let's fix that
  final String apiUrl =
      "https://v3.football.api-sports.io/teams?id=33";

  static const headers = {


    'Content-Type':'application/json',
    'x-apisports-key':'2a1edea81bd47e94b86076d948bc6220'
  };

  //Now we will create our method
  //but before this we need to create our model

  //Now we finished with our Model
  //  Future<List<SoccerMatch>>
  getAllteames() async {
    var url = Uri.parse(apiUrl);
    var res = await get(url, headers: headers);
    // var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      Map body = jsonDecode(res.body);
      List teamsList = body['response'];
      // print("Api service: ${body}"); // to debug
      List<TeamsData> matches = teamsList.map((dynamic item) => TeamsData.fromJson(item)).toList();

      return matches;

    }
  }
}