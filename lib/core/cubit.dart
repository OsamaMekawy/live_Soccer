import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/FixturesModel.dart';
import 'package:football/Models/player_Model.dart';
import 'package:football/Models/standing_Model.dart';
import 'package:football/Models/teams_Models.dart';
import 'package:football/Models/teams_Statestics_model.dart';
import 'package:football/Modules/Home/home.dart';
import 'package:football/Modules/Statestics/Statestics.dart';
import 'package:football/core/cach_helper.dart';
import 'package:football/core/diohelper.dart';
import 'package:football/core/endpoint.dart';
import 'package:football/core/states.dart';
import '../Modules/Matches/matches.dart';
import '../Modules/foryou/ForYoy.dart';





class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;

  List<Widget> bottomScreen = [
    HomeScreen(),
    MatchesScreen(),
    ForyouScreen(),
    StatesticsScreen()
  ];


  void userRegister({
    required String email,
    required String name,
    required String phone,
    required String password,
  })async{

    emit(RegisterLodingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password
    ).then((value) {
      emit(RegisterGetDataSuccsesState());

    }).catchError((eroor){
      emit(RegisterGetDataErrorState(eroor));

    });


  }


  void changeBottomNav(int index){
    currentindex = index;
    emit(ChangeBottomNavState());

  }

 PlayerModel ? playerModel;
  var i ;
  Map<String,dynamic> favourite ={};


void getPlayers(){
  emit(PlayerLodingDataState());
  for(i=2;i<=39;i++){
    DioHelper.getData(
        url: PLAYERS,
        query: {
          'league':i,
          'season':'2019',
          // "id": "276",
        //  'page': i

        }
    ).then((value) => {
      playerModel = PlayerModel.fromJson(value.data),
    // playerModel?.responce.forEach((element) {
    // favourite.addAll({element.player.photo:element.player.Name});
    // }),


      emit(PlayerGetDataSuccsesState()),
    }).catchError((eroor){
      print(eroor.toString());
      emit(PlayerGetDataErrorState(eroor));

    });
  }
  print(playerModel?.responce[0].player?.photo);

}


  Map<int,bool> favouritee ={};
  TeamsModel ? teamsModel;

  void getTeams(){
    emit(TeamsLodingDataState());
    DioHelper.getData(
        url: TEAMS,
        query: {

         // 'league':'39',
         // 'league':'140',
          'id': '36',
        //  'season':'2021',
        //  'id': '4',


        }
    ).then((value) => {
      teamsModel = TeamsModel.fromJson(value.data),
    //  print(teamsModel?.responce[5].teams.logo),


      emit(TeamsGetDataSuccsesState()),
    }).catchError((eroor){
      print(eroor.toString());
      emit(TeamsGetDataErrorState(eroor));

    });
  }


  void getTeamsone(){
    emit(TeamsLodingDataState());
    DioHelper.getData(
        url: TEAMS,
        query: {

          // 'league':'39',
          'league':'39',
          'season':'2021',
          //  'id': '4',
          // 'id': '33'

        }
    ).then((value) => {
      teamsModel = TeamsModel.fromJson(value.data),
      print(teamsModel?.responce[0].teams.logo),

      emit(TeamsGetDataSuccsesState()),
    }).catchError((eroor){
      print(eroor.toString());
      emit(TeamsGetDataErrorState(eroor));

    });
  }

   FixtureModel ? fixtureModel;


  void getFixture(){
    emit(FixtureLodingDataState());
    DioHelper.getData(
        url: Fixturess,
        query: {

          // 'league':'39',
          // 'league':'140',
          'h2h': '33-34',
         // 'h2h': '33-35',
         // h2h!: '33-35',
         // h2h!: '33-36',
        // 'h2h': '33-35',

        //  "last": "1"
          //'season':'2021',
          //  'id': '4',

        }
    ).then((value) => {
      fixtureModel = FixtureModel.fromJson(value.data),
       // print(fixtureModel?.responce[5].teamss?.home?.name),

      emit(FixtureGetDataSuccsesState()),
    }).catchError((eroor){
      print(eroor.toString());
      emit(FixtureGetDataErrorState(eroor));

    });
  }






  StandingsModel ? standingsModel;

  void getStandings(){
    emit(StandingsLodingDataState());
    DioHelper.getData(
        url: STANDINGS,
        query: {

           'league':'39',
           'season':'2019',
         //  'current':'true'

        }
    ).then((value) => {
      standingsModel = StandingsModel.fromJson(value.data),
      // print(fixtureModel?.responce[5].teamss?.home?.name),

      emit(StandingsGetDataSuccsesState()),
    }).catchError((eroor){
      print(eroor.toString());
      emit(StandingsGetDataErrorState(eroor));

    });
  }


  late ChangeFavouritemodel changeFavouritemodel;

  bool isDark = false;

  void ChangeMode({ bool? fromShared}){

    if(fromShared!=null)
    {
      isDark = fromShared;
      emit(AppChangeAppMoodState());
    }else
    {
      isDark = !isDark;
      CacheHelper.putBoolen(key: "isDark", value: isDark).then((value) {
        emit(AppChangeAppMoodState());
      });
    }

  }






}








