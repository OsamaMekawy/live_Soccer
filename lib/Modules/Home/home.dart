import 'package:buildcondition/buildcondition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/player_Model.dart';
import 'package:football/Modules/Drawer/mydrawer.dart';
import 'package:football/core/compounts.dart';
import 'package:football/core/cubit.dart';
import 'package:football/core/states.dart';

import '../../Models/FixturesModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var i;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = AppCubit.get(context);
        return BuildCondition(
          condition: cubit.fixtureModel!=null,
          fallback: (context)=>Center(child: CircularProgressIndicator(),),
          builder: (context)=>BuildCarousel(cubit.fixtureModel!)
        );
      },

    );
  }


  Widget BuildCarousel(FixtureModel? model)=>Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(

             // color: Colors.grey.shade50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0,left: 15),
                    child: Row(
                    children: [
                          Text("Discover",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,)),
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
                       child: IconButton(
                           onPressed: (){ navigateTo(context, MyDrawar()); },
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
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                    //  color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: CarouselSlider(
                      items:[
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Neymar.png"),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 130.0,left: 50),
                              child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Neymar.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 130.0,left: 50),
                              child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Neymar.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 130.0,left: 50),
                              child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                          ],
                        ),

                      ],
                      options: CarouselOptions(
                        height: 250,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        scrollDirection: Axis.horizontal,
                        autoPlayCurve: Curves.fastOutSlowIn
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),


                  Container(
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
                        SizedBox(height: 15,),
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
                        Container(
                          height: 500,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          //  color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text("Top Stories",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
                                  ),
                                  SizedBox(height: 20,),
                                  Text("Charles Gonzales",style: TextStyle(fontSize: 15,color: Colors.black38),),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 90,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          width: 50,
                                          height: 100,
                                          child: Image(image: AssetImage(""),),
                                        ),
                                        Text("Hello. You need to come and pass a few tests .")
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text("Gene Williams",style: TextStyle(fontSize: 15,color: Colors.black38),),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 90,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ""
                                                  ),
                                                  scale: 2
                                              )
                                          ),
                                          width: 40,
                                          height: 70,

                                        ),
                                        Text("Hello. You need to come and pass a few tests .")
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text("iene Williams",style: TextStyle(fontSize: 15,color: Colors.black38),),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 90,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ""
                                                  ),
                                                  scale: 2
                                              )
                                          ),
                                          width: 40,
                                          height: 70,

                                        ),
                                        Text("Hello. You need to come and pass a few tests .")
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,)

                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),



                ],
              ),
            ),

        ],
      ),
    ),
  );
}




// Scaffold(
// body :Padding(
// padding: const EdgeInsets.only(top: 45.0,left: 15),
// child: Column(
// children: [
// Row(
// children: [
// Text("Discover",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black)),
// Spacer(),
// Padding(
// padding: const EdgeInsets.only(right: 10.0,top: 5),
// child: Container(
// height: 30,
// width: 40,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(25)),
// color: Colors.deepOrangeAccent
// ),
// child: IconButton(
// onPressed: (){},
// icon: Icon(Icons.person,color: Colors.white,)
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 15,),
//
// ],
// ),
// )
// ),