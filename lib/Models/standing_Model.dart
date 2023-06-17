
class StandingsModel{
  List <StandingsData> responce = [];

  // GermanModel(this.responce);

  StandingsModel.fromJson(Map<String,dynamic>json)
  {
    json['response'].forEach((element) {
      responce.add(StandingsData.fromJson(element));
    });
    var s = json['response'];
  }
}


class League {
  int? id;
  String? Name;
  String? country;
  String? logo;
  String? flag;
  int? season;
  List<Standings>? standings;
  Team? team;


  League({
    this.id,
    this.Name,
    this.country,
    this.logo,
    this.flag,
    this.season,
    this.standings,
    this.team

  });

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
        id: json['id'],
        Name: json['name'],
        country: json['country'],
        logo: json['logo'],
        flag: json['flag'],
        season: json['season'],
      standings: List<Standings>.from(json['standings'].map((standings) => Standings.fromJson(standings))),
      team: Team.fromJson(json['team'])

    );
  }
}


class Team{
  int? id;
  String? name;
  String? Logo;
  Team({this.id,this.name,this.Logo});

  factory Team.fromJson(Map<String,dynamic>json){
    return Team(
      id: json['id'],
      name: json['name'],
      Logo: json['logo']
    );
  }

}


class Standings{
  int ? rank;
  Team ? team;
  int ? Points;
  int ? GoalsDiif;
  String ? Group;
  String ? From;
  String ? Status;
  String?Description;
  All ? all;
  Home? home;
  Away?away;

  Standings({this.rank,this.Points,this.GoalsDiif,this.Group,this.From,this.away,this.home,this.all,this.team,this.Status,this.Description});

  factory Standings.fromJson(Map<String,dynamic>json){
    return Standings (
      rank: json['rank'],
      Points: json['points'],
      team: Team.fromJson(json['team']),
      GoalsDiif: json['goalsDiff'],
      Group: json['group'],
      From: json['form'],
      Status: json['status'],
      Description: json['description'],
      all: All.fromJson(json['all']),
      home: Home.fromJson(json['home']),
      away: Away.fromJson(json['away'])
    );
  }




}


class All{

  int? played;
  int? wins;
  int? draws;
  int? lose;
  Goals? goals;

  All({this.played,this.wins,this.draws,this.lose,this.goals});

  factory All.fromJson(Map<String,dynamic>json){
    return All(
      played: json['played'],
      wins: json['win'],
      draws: json['draw'],
      lose: json['lose'],
      goals: Goals.fromJson(json['goals'])
    );
  }


}

class Home{

  int? played;
  int? wins;
  int? draws;
  int? lose;
  Goals? goals;

  Home({this.played,this.wins,this.draws,this.lose,this.goals});

  factory Home.fromJson(Map<String,dynamic>json){
    return Home(
        played: json['played'],
        wins: json['win'],
        draws: json['draw'],
        lose: json['lose'],
        goals: Goals.fromJson(json['goals'])
    );
  }


}


class Away{

  int? played;
  int? wins;
  int? draws;
  int? lose;
  Goals? goals;

  Away({this.played,this.wins,this.draws,this.lose,this.goals});

  factory Away.fromJson(Map<String,dynamic>json){
    return Away(
        played: json['played'],
        wins: json['win'],
        draws: json['draw'],
        lose: json['lose'],
        goals: Goals.fromJson(json['goals'])
    );
  }


}


class Goals{
  int ? For;
  int ? against;

  Goals({this.For,this.against});

  factory Goals.fromJson(Map<String,dynamic>json){
    return Goals(
      For: json['for'],
      against: json['against']
    );
  }

}


class StandingsData{
  League ? league;
  StandingsData({this.league});
  factory StandingsData.fromJson(Map<String,dynamic>json){
    return StandingsData(
      league: League.fromJson(json['league'])
    );
  }
}

