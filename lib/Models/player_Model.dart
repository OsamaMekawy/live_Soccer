
import 'dart:convert';

class PlayerModel {

// late LeagueData data;
  List<PlayerData> responce = [];

  // GermanModel(this.responce);


  PlayerModel.fromJson(Map<String, dynamic>json){
    json['response'].forEach((element) {
      responce.add(PlayerData.fromJson(element));
    });
    var s = json['response'];
  }
}

class Player{
  int? id;
  String? Name;
  String? firstName;
  String? lastName;
  int? age;
  String? nationality;
  String? height;
  String? weight;
  String? photo;
  Birth? birth;

  Player({
     this.id,
     this.Name,
     this.firstName,
     this.lastName,
     this.age,
     this.nationality,
     this.height,
     this.weight,
     this.photo,
     this.birth
  });

  factory Player.fromJson(Map<String,dynamic>json){
    return Player(
        id: json['id'],
        Name:json ['name'],
        firstName: json ['firstname'],
        lastName: json ['lastname'],
        age: json ['age'],
        nationality: json ['nationality'],
        height: json ['height'],
        weight: json ['weight'],
        photo: json ['photo'],
        birth: Birth.fromJson(json['birth'])
    );
  }
}


class Birth{

  String? Date;
  String? Place;
  String? country;

  Birth({ this.Date, this.Place, this.country});

  factory Birth.fromJson(Map<String,dynamic>json){
    return Birth(
        Date:json ['date'],
        Place:json ['place'],
        country:json ['country']
    );
  }
}


class Statistics{
  Team? team;
  League? league;
  Goals? goals;

  Statistics({
     this.league,
     this.team,
     this.goals,
  });

  factory Statistics.fronJson(Map<String,dynamic>json){
    return Statistics(
        league: League.fromJson(json['league']),
        team: Team.fromJson(json['team']),
      goals: Goals.fromJson(json['goals'])
    );
  }
}


class Team{
  int? id;
  String? Name;
  String? Logo;

  Team({ this.id, this.Name, this.Logo});

  factory Team.fromJson(Map<String,dynamic>json){
    return Team(
      id : json['id'],
      Name : json['name'],
      Logo : json['logo'],
    );

  }

}

class Goals{
  int? Total;
  int? Assists;
  int? Saves;

  Goals({ this.Total, this.Assists, this.Saves});

  factory Goals.fromJson(Map<String,dynamic>json){
    return Goals(
      Total : json['total'],
      Assists : json['assists'],
      Saves : json['saves'],
    );

  }

}


class League {
  int? id;
  String? Name;
  String? country;
  String? logo;
  String? flag;
  int? season;

  League({
     this.id,
     this.Name,
     this.country,
     this.logo,
     this.flag,
     this.season,
  });

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      id: json['id'],
      Name: json['name'],
      country: json['type'],
      logo: json['logo'],
      flag: json['flag'],
      season: json['season'],
    );
  }
}

class PlayerData{
  Player? player;
  List<Statistics>? statistics;

  PlayerData({ this.player, this.statistics});

  factory PlayerData.fromJson(Map<String,dynamic>json){
    return PlayerData(
      player: Player.fromJson(json['player']),
      statistics:List<Statistics>.from(json['statistics'].map((statistics) => Statistics.fronJson(statistics))),
    );
  }

}