import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Modules/Drawer/mydrawer.dart';
import 'package:football/Modules/Home/home.dart';
import 'package:football/Modules/Leagus/Bundesliga/bundesliga.dart';
import 'package:football/Modules/Leagus/LaLiga/laliga.dart';
import 'package:football/Modules/Leagus/Ligue/ligue.dart';
import 'package:football/Modules/Leagus/Premier%20League/premier_league.dart';
import 'package:football/Modules/Leagus/SERIE%20A/Serie%20_A.dart';
import 'package:football/core/cach_helper.dart';
import 'package:football/core/compounts.dart';
import 'package:football/main.dart';

import '../../Models/FixturesModel.dart';
import '../../core/cubit.dart';
import '../../core/states.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  bool isBlue = true;
  bool match = false;
  var model = FixtureModel;
 // var elps = model.responce[0].fixturee?.status?.elapsed ;
//  TabController tabController = TabController(length: 2, vsync: this);


  @override
  Widget build(BuildContext context) {
        return BlocConsumer<AppCubit,AppStates>(
            listener: (context,state){},
        builder: (context,state){
        var cubit = AppCubit.get(context);
        return BuildCondition(
        condition: cubit.fixtureModel!=null,
        fallback: (context)=>Center(child: CircularProgressIndicator(),),
        builder: (context)=>BuildMatches(cubit.fixtureModel!)
        );
      },

    );
  }


  Widget BuildMatches(FixtureModel?model)=>Scaffold(
      body :SingleChildScrollView(
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
                          Text("Matches",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,)),
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
                                Icon(Icons.sports_soccer_outlined,color: Colors.blue,),
                                SizedBox(height: 10,),
                                Text("MATCHES",),
                                SizedBox(height: 8,),
                                TextButton(
                                    onPressed: (){
                                      navigateTo(context, SoccerApp());
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
                                Icon(Icons.sports_soccer_outlined,color: Colors.blue,),
                                SizedBox(height: 10,),
                                Text("MATCHES"),
                                SizedBox(height: 8,),
                                TextButton(
                                    onPressed: (){
                                      navigateTo(context, Bundesliga());
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
                                Icon(Icons.sports_soccer_outlined,color: Colors.blue,),
                                SizedBox(height: 10,),
                                Text("MATCHES"),
                                SizedBox(height: 8,),
                                TextButton(
                                    onPressed: (){
                                      navigateTo(context, LaLiga());
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
                                Icon(Icons.sports_soccer_outlined,color: Colors.blue,),
                                SizedBox(height: 10,),
                                Text("MATCHES"),
                                SizedBox(height: 8,),
                                TextButton(
                                    onPressed: (){
                                      navigateTo(context, SerieA());
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
                                Icon(Icons.sports_soccer_outlined,color: Colors.blue,),
                                SizedBox(height: 10,),
                                Text("MATCHES"),
                                SizedBox(height: 8,),
                                TextButton(
                                    onPressed: (){
                                      navigateTo(context, Ligue());
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
              SizedBox(height: 20,),
              Container(
                height: 550,

                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(

                        tabs: [
                          Tab(

                            child:  Text("Following", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,

                                )),
                          ),
                          Tab(

                            child: Text("All", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,

                                )
                            ),
                          ),


                        ],

                        onTap: (index){
                          CacheHelper.getBoolen(key: "TeamsSearch");

                        },

                      ),

                      Expanded(
                        child: TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    //  color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                                // Solution is may be model?.responce[0].teamss.home.Logo ?? "" or in Model class all data type should be null ?
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("${model?.responce[0].fixturee?.status?.elapsed}"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("18:00"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("18:00"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),


                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    //  color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("18:00"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                                // Solution is may be model?.responce[0].teamss.home.Logo ?? "" or in Model class all data type should be null ?
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),
                                                        //  Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("18:00"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 130,
                                        width: 400,

                                        decoration: BoxDecoration(
                                          //   color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "${model?.responce[0].teamss?.home?.Logo}"
                                                                ),

                                                                // Solution is may be model?.responce[0].teamss.home.Logo ?? "" or in Model class all data type should be null ?
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 8,),
                                                        Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 0,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0),
                                                    child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20.0),
                                                    child: Row(
                                                      children: [
                                                        Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                                        SizedBox(width: 8,),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      "${model?.responce[0].teamss?.away?.Logo}"
                                                                  )
                                                              )
                                                          ),
                                                        ),
                                                        //  Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Divider(),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 21.0),
                                                  child: Text("${model?.responce[0].league?.Name}"),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: Text("18:00"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),


                                    ],
                                  ),
                                ),
                              ),


                        ]
                        ),
                      )

                    ],
                  ),
                )
              ),

              SizedBox(height: 20,),

            //  BuildFollowing(model)

            ],
          ),
        ),
      )
  );


  Widget BuildFollowing(FixtureModel? model)=>Container(
    decoration: BoxDecoration(
      //  color: Colors.white,
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Todays matches",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22),),
        ),
        SizedBox(height: 20,),
        Container(
          height: 130,
          width: 400,

          decoration: BoxDecoration(
            //  color: Colors.white,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "${model?.responce[0].teamss?.home?.Logo}"
                                  ),

                                  // Solution is may be model?.responce[0].teamss.home.Logo ?? "" or in Model class all data type should be null ?
                                )
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("${model?.responce[0].teamss?.home?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                    SizedBox(width: 0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text("${model?.responce[0].teamss?.away?.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                          SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${model?.responce[0].teamss?.away?.Logo}"
                                    )
                                )
                            ),
                          ),
                          //  Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 8,),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 21.0),
                    child: Text("${model?.responce[0].league?.Name}"),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text("18:00"),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 130,
          width: 400,

          decoration: BoxDecoration(
             // color: Colors.white,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${model?.responce[2].teamss?.home?.Logo}"
                                    )
                                )
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("Man city",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                    ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                          SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/OIP.png"
                                    )
                                )
                            ),
                          ),
                          //  Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 8,),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 21.0),
                    child: Text("Premier League"),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text("18:00"),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 130,
          width: 400,

          decoration: BoxDecoration(
            //  color: Colors.white,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/city.png"
                                    )
                                )
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("Man city",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Text("vs",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18),),
                    ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                          SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/OIP.png"
                                    )
                                )
                            ),
                          ),
                          //  Text("Man United",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 8,),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("Premier League"),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 21.0),
                    child: Text("18:00"),
                  ),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: 20,),


      ],
    ),
  );
}
