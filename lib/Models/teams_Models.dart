
class TeamsModel {

// late LeagueData data;
  List<TeamsData> responce = [];
// late TeamsData responce;
  // GermanModel(this.responce);


  TeamsModel.fromJson(Map<String, dynamic>json){
    json['response'].forEach((element) {
      responce.add(TeamsData.fromJson(element));
    });
   // responce = TeamsData.fromJson(json['response']);
    var s = json['response'];
  }
}





class Teams{
  int id;
  String name;
  String logo;
  String code;
  String country;

  Teams({
    required this.id,
    required this.name,
    required this.logo,
    required this.code,
    required this.country
  });

  factory Teams.fromJson(Map<String,dynamic>json){
    return Teams(
        id:json['id'] ,
        name: json['name'],
        logo: json['logo'],
      code: json['code'],
      country: json['country']
    );
  }
}



class Venue{
  int id;
  String name;
  String image;
  String address;
  String city;

  Venue({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.city
  });

  factory Venue.fromJson(Map<String,dynamic>json){
    return Venue(
        id:json['id'] ,
        name: json['name'],
        image: json['image'],
        address: json['address'],
        city: json['city']
    );
  }
}



class TeamsData{
  Teams teams;
  Venue venue;

  TeamsData({required this.teams,required this.venue});


  factory TeamsData.fromJson(Map<String,dynamic>json){
    return TeamsData(
    teams:Teams.fromJson(json['team']),
      venue: Venue.fromJson(json['venue'])
    );
  }
}