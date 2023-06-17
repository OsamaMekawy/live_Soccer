

class FixtureModel {

// late LeagueData data;
  List<FixtureData> responce = [];

  // GermanModel(this.responce);


  FixtureModel.fromJson(Map<String,dynamic>json){
    json['response'].forEach((element) {
      responce.add(FixtureData.fromJson(element));
    });
    var s = json['response'];
  }
}



class Fiixture{
  int? id;
  String? referee;
  String? timezone;
  String? date;
  int? timestamp;
  Periods? periods;
  Venue? venue;
  Status? status;
  Fiixture({
     this .id,
     this.referee,
     this.timestamp,
     this.date,
     this.timezone,
     this.periods,
     this.venue,
     this.status

  });
  factory Fiixture.fromJson(Map<String,dynamic>json){
    return Fiixture(
        id: json['id'],
        referee: json['referee'],
        timestamp: json['timestamp'],
        date: json['date'],
        timezone: json['timezone'],
      periods: Periods.fromJson(json['periods']),
      venue: Venue.fromJson(json['venue']),
      status: Status.fromJson(json['status'])
    );
  }
}

class Periods{
  int? First;
  int? Second;
  Periods({
     this.First, this.Second
});

  factory Periods.fromJson(Map<String,dynamic>json){
    return Periods(
        First: json['first'],
        Second: json['second']
    );
  }

}


class Venue{
  int? id;
  String? Name;
  String? City;
  Venue({
     this.id, this.Name, this.City
});

  factory Venue.fromJson(Map<String,dynamic>json){
    return Venue(
        id: json['id'],
        Name: json['name'],
        City: json['city']
    );
  }
}

class Status{
  String? Long;
  String? Short;
  int? elapsed;
  Status({
     this.Long, this.Short, this.elapsed
});
  factory Status.fromJson(Map<String,dynamic>json){
    return Status(
        Long: json['long'],
        Short: json['short'],
        elapsed: json['elapsed']
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
  String?rounds;

  League({
     this.id,
     this.Name,
     this.country,
     this.logo,
     this.flag,
     this.season,
     this.rounds
  });

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      id: json['id'],
      Name: json['name'],
      country: json['type'],
      logo: json['logo'],
      flag: json['flag'],
      season: json['season'],
      rounds: json['round']
    );
  }
}


class Teamss{
  Home? home;
  Away ?away;
  Teamss({
     this.home, this.away
});
  factory Teamss.fromJson(Map<String,dynamic>json){
    return Teamss
      (
        home: Home.fromJson(json['home']),
        away: Away.fromJson(json['away'])
    );
  }
}


class Home{
  int? id;
  String? name;
  String? Logo;
  bool? Winner;

  Home({
     this.id, this.name, this.Logo, this.Winner
});
  factory Home.fromJson(Map<String,dynamic>json){
    return Home(
      id: json['id'],
      name: json['name'],
      Logo: json['logo'],
      Winner: json['winner'],
    );
  }
}

class Away{
  int? id;
  String? name;
  String? Logo;
  bool? Winner;

  Away({
     this.id, this.name, this.Logo, this.Winner
});
  factory Away.fromJson(Map<String,dynamic>json){
    return Away(
      id: json['id'],
      name: json['name'],
      Logo: json['logo'],
      Winner: json['winner'],
    );
  }
}

class Goals{
  int? home;
  int? away;
  Goals({
     this.home, this.away
  });
  factory Goals.fromJson(Map<String,dynamic>json){
    return Goals
      (
        home: json['home'],
        away: json['away']
    );
  }
}

class Score{
  Halftime? halftime;
  Falltime? falltime;
  Extratime? extratime;
  Penalety? penalety;
  Score({
     this.halftime,
     this.falltime,
     this.extratime,
     this.penalety,
  });

  factory Score.fromJson(Map<String,dynamic>json){
    return Score
      (
      halftime: Halftime.fromJson(json['halftime']),
      falltime: Falltime.fromJson(json['fulltime']),
      extratime: Extratime.fromJson(json['extratime']),
      penalety: Penalety.fromJson(json['penalty']),
    );
  }

}

class Halftime{
  int? home;
  int? away;
  Halftime({
     this.home, this.away
  });
  factory Halftime.fromJson(Map<String,dynamic>json){
    return Halftime
      (
        home: json['home'],
        away: json['away']
    );
  }

}

class Falltime{
  int? home;
  int ?away;
  Falltime({
     this.home, this.away
  });
  factory Falltime.fromJson(Map<String,dynamic>json){
    return Falltime
      (
        home: json['home'],
        away: json['away']
    );
  }

}

class Extratime{
  int? home;
  int ?away;
  Extratime({
    required this.home,required this.away
  });
  factory Extratime.fromJson(Map<String,dynamic>json){
    return Extratime
      (
        home: json['home'],
        away: json['away']
    );
  }

}

class Penalety{
  int? home;
  int ?away;
  Penalety({
    required this.home,required this.away
  });
  factory Penalety.fromJson(Map<String,dynamic>json){
    return Penalety
      (
        home: json['home'],
        away: json['away']
    );
  }

}


class FixtureData{
  Fiixture? fixturee;
  League? league;
  Teamss? teamss;
  Goals? goals;
  Score? score;

  FixtureData({
     this.fixturee,
   this.league,
     this.teamss,
     this.goals,
     this.score
});
  factory FixtureData.fromJson(Map<String,dynamic>json){
    return FixtureData(
        fixturee:Fiixture.fromJson(json['fixture']),
        league: League.fromJson(json['league']),
        teamss: Teamss.fromJson(json['teams']),
        goals: Goals.fromJson(json['goals']),
        score: Score.fromJson(json['score'])
    );
  }
}



class ChangeFavouritemodel{
  late bool status;
  late String message;

  ChangeFavouritemodel.fromJson(Map<String,dynamic>json)
  {
    status = json['status'];
    message = json['message'];
  }


}