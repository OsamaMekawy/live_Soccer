
class TeamsStatectics{
  late Fixtures data;

  // List<fixturesData> data =[];

  TeamsStatectics.fromJson(Map<String,dynamic>json){
    // json['response'].forEach((element) {
    //   data.add(fixturesData.fromJson(element));
    // });
    // var s = json['fixtures'];
    data = Fixtures.fromJson(json['response']);

    // );
  }
}

class Leaguee {
  int id;
  String Name;
  String country;
  String logo;
  String flag;

  Leaguee({
    required this.id,
    required this.Name,
    required this.country,
    required this.logo,
    required this.flag
  });

  factory Leaguee.fromJson(Map<String, dynamic> json) {
    return Leaguee(
        id: json['id'],
        Name: json['name'],
        country: json['country'],
        logo: json['logo'],
        flag: json['flag']
    );
  }
}

class Teams{
  int id;
  String name;
  String logo;

  Teams({required this.id,required this.name,required this.logo});

  factory Teams.fromJson(Map<String,dynamic>json){
    return Teams(
        id:json['id'] ,
        name: json['name'],
        logo: json['logo']
    );
  }
}

class Played{
  int home;
  int away;
  int total;

  Played({required this.home, required this.away, required this.total});

  factory Played.fromJson(Map<String,dynamic>json){
    return Played(
        home : json ['home'],
        away: json['away'],
        total:json ['total']
    );
  }
}

class Wins{
  int home;
  int away;
  int total;

  Wins({required this.home, required this.away, required this.total});

  factory Wins.fromJson(Map<String,dynamic>json){
    return Wins(
        home : json ['home'],
        away: json['away'],
        total:json ['total']
    );
  }
}

class Draws{
  int home;
  int away;
  int total;

  Draws({required this.home, required this.away, required this.total});

  factory Draws.fromJson(Map<String,dynamic>json){
    return Draws(
        home : json ['home'],
        away: json['away'],
        total:json ['total']
    );
  }
}

class Loses{
  int home;
  int away;
  int total;

  Loses({required this.home, required this.away, required this.total});

  factory Loses.fromJson(Map<String,dynamic>json){
    return Loses(
        home : json ['home'],
        away: json['away'],
        total:json ['total']
    );
  }
}

class Fixtures{

  fixturesData fix;

  Fixtures({required this.fix});

  factory Fixtures.fromJson(Map<String,dynamic>json){
    return Fixtures(
        fix: fixturesData.fromJson(json['fixtures'])
    );
  }
}



class fixturesData{
  Fixtures fixtures;
  Played played;
  Wins wins;
  Draws draws;
  Loses loses;
  Leaguee leaguee;

  fixturesData({
    required this.fixtures,
    required this.played,
    required this.wins,
    required this.draws,
    required this.loses,
    required this.leaguee
  });

  factory fixturesData.fromJson(Map<String,dynamic>json){
    return fixturesData(
      fixtures: Fixtures.fromJson(json['fixtures']),
      played: Played.fromJson(json['played']),
      wins:Wins.fromJson(json['wins']),
      draws:Draws.fromJson(json['draws']),
      loses:Loses.fromJson(json['loses']),
      leaguee: Leaguee.fromJson(json['league'])
    );
  }
}





