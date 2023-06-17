import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/standing_Model.dart';
import 'package:football/Modules/Drawer/mydrawer.dart';
import 'package:football/Modules/League_two/Bundesliga/bundesliga_two.dart';
import 'package:football/Modules/League_two/Laliga/laliga_two.dart';
import 'package:football/Modules/League_two/Ligue_one/ligue_two.dart';
import 'package:football/Modules/League_two/Premier%20League/premier_league.dart';
import 'package:football/Modules/League_two/SerieA/serieA_two.dart';
import 'package:football/Modules/Leagus/Bundesliga/bundesliga.dart';
import 'package:football/Modules/Leagus/LaLiga/laliga.dart';
import 'package:football/Modules/Leagus/Ligue/ligue.dart';
import 'package:football/Modules/Leagus/SERIE%20A/Serie%20_A.dart';
import 'package:football/Modules/test/table_standings.dart';
import 'package:football/Modules/test/test_standings.dart';
import 'package:football/core/compounts.dart';

import '../../core/cubit.dart';
import '../../core/states.dart';
import '../Leagus/Premier League/premier_league.dart';

class StatesticsScreen extends StatefulWidget {
  const StatesticsScreen({Key? key}) : super(key: key);

  @override
  State<StatesticsScreen> createState() => _StatesticsScreenState();
}

class _StatesticsScreenState extends State<StatesticsScreen> {
  @override
  Widget build(BuildContext context) {
    return   BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = AppCubit.get(context);

        return Scaffold(


            body : SingleChildScrollView(
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.white,
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 45.0,left: 15),
                            child: Row(
                              children: [
                                Text("Statestics",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,)),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0,top: 5),
                                  child: Container(
                                      height: 30,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(25)),
                                          color: Colors.deepOrangeAccent
                                      ),
                                      child:IconButton(onPressed: (){navigateTo(context, MyDrawar());},
                                          icon: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:Colors.deepOrangeAccent,
                                              // ShopCubit.get(context).favourite[model..id ] ? Colors.blue,
                                              child: Icon(Icons.person,size:22,color: Colors.white,)
                                          )
                                      )

                                    // IconButton(
                                    //     onPressed: (){},
                                    //     icon: Icon(Icons.person,color: Colors.white,)
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ) ,
                    ),
                    SizedBox(height: 15,),
                    Container(
                        height: MediaQuery.of(context).size.height/3-70,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 125,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.rate_review_outlined,color: Colors.blue,),
                                      SizedBox(height: 10,),
                                      Text("STATS"),
                                      SizedBox(height: 8,),
                                      TextButton(
                                          onPressed: (){
                                            navigateTo(context, TestTable(code: 'PL'));
                                          },
                                          child: Text(
                                              "Premier "
                                                  "League",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                          )
                                      )
                                      // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                      // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )  ,
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 125,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.rate_review_outlined,color: Colors.blue,),
                                      SizedBox(height: 10,),
                                      Text("STATS"),
                                      SizedBox(height: 8,),
                                      TextButton(
                                          onPressed: (){
                                            navigateTo(context, TestTable(code: 'BL1'));
                                          },
                                          child: Text(
                                              "Bundesliga ",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                          )
                                      )
                                      // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                      // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )  ,
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 125,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.rate_review_outlined,color: Colors.blue,),
                                      SizedBox(height: 10,),
                                      Text("STATS"),
                                      SizedBox(height: 8,),
                                      TextButton(
                                          onPressed: (){
                                            navigateTo(context, TestTable(code: 'PD'));
                                          },
                                          child: Text(
                                              "La Liga ",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                          )
                                      )
                                      // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                      // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )  ,
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 125,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.rate_review_outlined,color: Colors.blue,),
                                      SizedBox(height: 10,),
                                      Text("STATS"),
                                      SizedBox(height: 8,),
                                      TextButton(
                                          onPressed: (){
                                            navigateTo(context, TestTable(code: 'SA'));
                                          },
                                          child: Text(
                                              "SERIE A ",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)
                                          )
                                      )
                                      // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                      // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )  ,
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 125,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.rate_review_outlined,color: Colors.blue,),
                                      SizedBox(height: 10,),
                                      Text("STATS"),
                                      SizedBox(height: 8,),
                                      TextButton(
                                          onPressed: (){
                                            navigateTo(context, TestTable(code: 'FL1'));
                                          },
                                          child: Text(
                                              "Ligue 1        "
                                                  "Uber Eats",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)
                                          )
                                      )
                                      // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                      // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )  ,
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(height:15),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Row(
                        children: [
                          Text("Premier League",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,)),
                          //  SizedBox(width: 5,),
                          IconButton(
                              onPressed: (){navigateTo(context, PremierLeagueTwo());},
                              icon: Icon(Icons.arrow_forward_ios)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("Pos",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                          SizedBox(width: 10,),
                          Text("Club",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                          Spacer(),
                          Text('P',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                          SizedBox(width: 10,),
                          Text('GO',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                          SizedBox(width: 10,),
                          Text('Pts',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    ///////////////////////// Teams

                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("2",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("3",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("4",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),

                    ///////////////////////////////// teams2

                    SizedBox(height:50),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Row(
                        children: [
                          Text("La Liga",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,)),
                          //  SizedBox(width: 5,),
                          IconButton(
                              onPressed: (){navigateTo(context, LaLigaTwo());},
                              icon: Icon(Icons.arrow_forward_ios)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("Pos",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text("Club",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                          Spacer(),
                          Text('P',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text('GO',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text('Pts',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),



                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("2",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("3",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Divider(color: Colors.grey.shade600,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Row(
                        children: [
                          Text("4",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          SizedBox(width: 12,),
                          Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                          SizedBox(width: 10,),
                          Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('17',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('13',style: TextStyle(fontSize: 12,),),
                          SizedBox(width: 10,),
                          Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


                        ],
                      ),
                    ),


                  ],
                ),
              ),
            )
          //  Center(child: Text("Statistics",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black),)),
        );

        //   BuildCondition(
        //   condition: cubit.standingsModel!=null,
        //     fallback: (context)=>Center(child: CircularProgressIndicator(),),
        //     builder: (context)=>BuildStatictis(cubit.standingsModel! , context)
        //
        // );
      },

    );
  }
}


Widget BuildStatictis(StandingsModel model, context) => Scaffold(


    body : SingleChildScrollView(
      child: Column(
        children: [
          Container(
            // color: Colors.white,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0,left: 15),
                  child: Row(
                    children: [
                      Text("Statestics",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,)),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0,top: 5),
                        child: Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                color: Colors.deepOrangeAccent
                            ),
                            child:IconButton(onPressed: (){navigateTo(context, MyDrawar());},
                                icon: CircleAvatar(
                                    radius: 15,
                                    backgroundColor:Colors.deepOrangeAccent,
                                    // ShopCubit.get(context).favourite[model..id ] ? Colors.blue,
                                    child: Icon(Icons.person,size:22,color: Colors.white,)
                                )
                            )

                          // IconButton(
                          //     onPressed: (){},
                          //     icon: Icon(Icons.person,color: Colors.white,)
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ) ,
          ),
          SizedBox(height: 15,),
          Container(
              height: MediaQuery.of(context).size.height/3-70,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.rate_review_outlined,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text("STATS"),
                            SizedBox(height: 8,),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, PremierLeagueTwo());
                                },
                                child: Text(
                                    "Premier "
                                        "League",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                )
                            )
                            // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                            // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      )  ,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.rate_review_outlined,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text("STATS"),
                            SizedBox(height: 8,),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, BundesligaTwo());
                                },
                                child: Text(
                                    "Bundesliga ",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                )
                            )
                            // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                            // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      )  ,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.rate_review_outlined,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text("STATS"),
                            SizedBox(height: 8,),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, LaLigaTwo());
                                },
                                child: Text(
                                    "La Liga ",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)

                                )
                            )
                            // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                            // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      )  ,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.rate_review_outlined,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text("STATS"),
                            SizedBox(height: 8,),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, SerieATwo());
                                },
                                child: Text(
                                    "SERIE A ",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)
                                )
                            )
                            // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                            // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      )  ,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.rate_review_outlined,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text("STATS"),
                            SizedBox(height: 8,),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, ligueTwo());
                                },
                                child: Text(
                                    "Ligue 1        "
                                        "Uber Eats",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)
                                )
                            )
                            // Text('Premier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                            // Text('League',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      )  ,
                    ),
                  ],
                ),
              )
          ),
          SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              children: [
                Text("Premier League",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,)),
                //  SizedBox(width: 5,),
                IconButton(
                    onPressed: (){navigateTo(context, PremierLeagueTwo());},
                    icon: Icon(Icons.arrow_forward_ios)
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("Pos",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                SizedBox(width: 10,),
                Text("Club",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                Spacer(),
                Text('P',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                SizedBox(width: 10,),
                Text('GO',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                SizedBox(width: 10,),
                Text('Pts',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
              ],
            ),
          ),
          SizedBox(height: 5,),

          ///////////////////////// Teams

          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("2",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("3",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("4",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),

          ///////////////////////////////// teams2

          SizedBox(height:50),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              children: [
                Text("La Liga",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,)),
                //  SizedBox(width: 5,),
                IconButton(
                    onPressed: (){navigateTo(context, LaLigaTwo());},
                    icon: Icon(Icons.arrow_forward_ios)
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("Pos",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                SizedBox(width: 10,),
                Text("Club",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                Spacer(),
                Text('P',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                SizedBox(width: 10,),
                Text('GO',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
                SizedBox(width: 10,),
                Text('Pts',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(height: 5,),



          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("2",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("3",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: Divider(color: Colors.grey.shade600,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              children: [
                Text("4",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                SizedBox(width: 12,),
                Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                SizedBox(width: 10,),
                Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('17',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('13',style: TextStyle(fontSize: 12,),),
                SizedBox(width: 10,),
                Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),


              ],
            ),
          ),


        ],
      ),
    )
  //  Center(child: Text("Statistics",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black),)),
);
