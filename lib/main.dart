import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/teams_Models.dart';
import 'package:football/Modules/Drawer/Privacy.dart';
import 'package:football/Modules/Leagus/Premier%20League/premier_league.dart';
import 'package:football/Modules/SignUp/signup.dart';
import 'package:football/Modules/onBoarding/onBborading.dart';
import 'package:football/Modules/onBoarding/teams_serch.dart';
import 'package:football/Modules/test/WidGets.dart';
import 'package:football/Modules/test/model_fixture.dart';
import 'package:football/Modules/test/test_standings.dart';
import 'package:football/core/cach_helper.dart';
import 'package:football/core/cubit.dart';
import 'package:football/core/diohelper.dart';
import 'package:football/core/states.dart';
import 'package:football/core/thems.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Modules/Drawer/help_Screen.dart';
import 'Modules/Home/home.dart';
import 'Modules/Layout/layout.dart';
import 'Modules/onBoarding/teams_search.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Modules/test/services_fixtures.dart';


 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DioHelper.init();
  await CacheHelper.init();
  bool ? isDark = CacheHelper.getBoolen(key: "isDark");
  bool ?  onBboarding = CacheHelper.getBoolen(key: "onBboarding");
  String ?  token = CacheHelper.getBoolen(key: "token");
  Widget  widget;
 print(onBboarding);


   if(OnBboarding!=null)
  {
    if(token!=null) {
      widget = LayoutScreen();
    } else {
      widget = RegisterScreen();
    }
  }else {
    widget = OnBboarding();
  }

  runApp(MyApp(

     // startwidget :widget,
    isDark : isDark ,
    startwidget : widget,

  ));
}

class MyApp extends StatelessWidget {
    bool? isDark;
    Widget  startwidget;
   // bool onBboarding;

   MyApp({super.key, required this.isDark,required this.startwidget});


 // const MyApp({super.key});

  // This widget is the root of your application. -
  @override
  Widget build(BuildContext context) {

  //  String? h2h;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context)=>AppCubit()..getTeams()..getFixture()..ChangeMode(fromShared: isDark),
          )
        ],
     child: BlocConsumer<AppCubit,AppStates>(
          listener: (context,state){},
          builder: (context,state){
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                      backgroundColor: Colors.deepOrange
                  ),
                  scaffoldBackgroundColor: Colors.white,
                  appBarTheme: AppBarTheme(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      //   backwardsCompatibility: false,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark,
                      ),
                      titleTextStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                      iconTheme: IconThemeData(
                          color: Colors.black
                      )
                  ),
                  bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      type: BottomNavigationBarType.fixed,
                      selectedItemColor: Colors.deepOrange,
                      elevation: 20
                  ),
                  textTheme: TextTheme(
                    titleLarge:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black) ,
                    titleMedium:TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    titleSmall: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                    colorScheme: ColorScheme.light(),
                  primaryColor: Colors.white
                ),
               // lighttheme,

                darkTheme: ThemeData(

                  scaffoldBackgroundColor: HexColor("333739"),
                  appBarTheme: AppBarTheme(
                      backgroundColor: HexColor("333739"),
                      elevation: 0,
                      // backwardsCompatibility: false,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.black26,
                        statusBarIconBrightness: Brightness.light,
                      ),
                      titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                      iconTheme: IconThemeData(
                          color: Colors.white
                      )
                  ),
                  bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.grey,
                    elevation: 20,
                    backgroundColor: HexColor("333739"),
                  ),
                  textTheme: TextTheme(

                    titleLarge: TextStyle(fontWeight: FontWeight.bold,color: Colors.white) ,
                       titleMedium: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                    titleSmall: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),

                  ),
                  colorScheme: ColorScheme.dark(),
                  primaryColor: Colors.black
                ),
                themeMode: AppCubit.get(context).isDark ? ThemeMode.light : ThemeMode.dark,
                home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                  return  startwidget;
                },)
            );
          },
      )
    );
  }
}



class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
       // backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Text(
          "Premier League",
       //   style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      //now we have finished the api service let's call it
      //Now befo re we create Our layout let's create our API service
      body: FutureBuilder<dynamic>(
        future: SoccerApi().getAllMatches(), //Here we will call our getData() method,
        builder: (context, snapshot) {
          //the future builder is very intersting to use when you work with api
          if (snapshot.hasData) {
         //   print((snapshot.data).length);
            return PageBody(List<SoccerMatch>.from(snapshot.data!));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }, // here we will buil the app layout
      ),
    );
  }
}


class SoccerAppteams extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppteamsState extends State<SoccerAppteams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFFAFAFA),

      //now we have finished the api service let's call it
      //Now befo re we create Our layout let's create our API service
      body: FutureBuilder<dynamic>(
        future: SoccerApiTeams().getAllteames(), //Here we will call our getData() method,
        builder: (context, snapshot) {
          //the future builder is very intersting to use when you work with api
          if (snapshot.hasData) {
            //   print((snapshot.data).length);
            return buildTeamsSearch(List<TeamsData>.from(snapshot.data!),context);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }, // here we will buil the app layout
      ),
    );
  }
}





