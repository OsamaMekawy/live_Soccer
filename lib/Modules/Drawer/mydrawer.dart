
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/FixturesModel.dart';
import 'package:football/Modules/Drawer/Privacy.dart';
import 'package:football/Modules/Drawer/help_Screen.dart';
import 'package:football/Modules/Home/home.dart';
import 'package:football/core/compounts.dart';
import 'package:football/core/cubit.dart';
import 'package:football/core/states.dart';


class MyDrawar extends StatefulWidget {
  const MyDrawar({Key? key}) : super(key: key);

  @override
  _MyDrawarState createState() => _MyDrawarState();
}

class _MyDrawarState extends State<MyDrawar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.white);
    return BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
      builder: (context,state){
          return Container(
            child: Drawer(
            //  backgroundColor: Colors.white,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(accountName: Text("Osama",style: TextStyle(fontSize: 20,),),
                      accountEmail: Text("Munish, German",style: TextStyle(color: Colors.grey),),
                      currentAccountPicture:GestureDetector(
                        child: new CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          child: Icon(Icons.person,),
                        ),
                      ),
                      decoration: BoxDecoration(
                        //  color: Colors.white
                      ),
                    ),
                    Container(
                     // color: Colors.white,
                      padding: EdgeInsets.only(right: 10,left: 10),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                               navigateTo(context, HomeScreen());
                            },
                            child: ListTile(
                              title: Text("News",style: TextStyle(fontSize: 18),),
                              leading: Icon(Icons.calendar_today,),

                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                     // color: Colors.white,
                      padding: EdgeInsets.only(right: 10,),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                             AppCubit.get(context).ChangeMode();

                              //   navigateTo(context, GermanBundesLeague());
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>new Category()));
                            },
                            child: ListTile(
                              title: Text("Dark Mood",style: TextStyle(fontSize: 18),),
                              leading: IconButton(onPressed: (){ AppCubit.get(context).ChangeMode();},icon: Icon(Icons.dark_mode_outlined),),

                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                     // color: Colors.white,
                      padding: EdgeInsets.only(right: 10,left: 10),

                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              // navigateTo(context, UefaEurope());
                              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                            },
                            child: ListTile(
                              title: Text(" Notification",style: TextStyle(fontSize: 18),),
                              leading: Icon(Icons.notifications,),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),



                    Container(
                    //  color: Colors.white,
                      padding: EdgeInsets.only(right: 10,left: 10),

                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                               navigateTo(context, HepScreen());
                              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                            },
                            child: ListTile(
                              title: Text(" Help",style: TextStyle(fontSize: 18),),
                              leading: Icon(Icons.gpp_maybe,),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                     // color: Colors.white,
                      padding: EdgeInsets.only(right: 10,left: 10),

                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                                 navigateTo(context, PrivacyScreen());
                              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shopping()));
                            },
                            child: ListTile(
                              title: Text(" Privacy & Policies",style: TextStyle(fontSize: 18),),
                              leading: Icon(Icons.security,),

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                    //  color: Colors.white,
                      padding: EdgeInsets.only(right: 10,left: 10),

                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              //  navigateTo(context, Review());
                              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tracking()));
                            },
                            child: ListTile(
                              title: Text(" Contact Us ",style: TextStyle(fontSize: 18),),
                              leading: Icon(Icons.chat_outlined,),

                            ),
                          ),
                        ],
                      ),

                    ),



                  ],
                ),
              ),
            ),
          );
      },
    );
  }
}
