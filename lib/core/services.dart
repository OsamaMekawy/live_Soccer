import 'dart:convert';

import 'package:football/Models/player_Model.dart';
import 'package:http/http.dart' as http;

class Search {
  var data = [];
  List<PlayerModel> results = [];

  String searchUrl = "https://v3.football.api-sports.io/players";

 Future <List<PlayerModel>> getPlayerList() async {
    var url = Uri.parse(searchUrl);
    var responce = await http.get(url);
    try {
      if (responce.statusCode == 200) {
        data = jsonDecode(responce.body);
        results = data.map((e) => PlayerModel.fromJson(e)).toList();
      } else {
        print('api erorr');
      }
    } on Exception catch (e) {
      print('erorr${e}');
    }
    return results;
  }
}
