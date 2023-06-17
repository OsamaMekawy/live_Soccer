import 'package:buildcondition/buildcondition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/Models/player_Model.dart';
import 'package:football/core/cubit.dart';
import 'package:football/core/states.dart';

import '../../../Models/FixturesModel.dart';


class SerieA extends StatefulWidget {
  const SerieA({Key? key}) : super(key: key);

  @override
  State<SerieA> createState() => _SerieAState();
}

class _SerieAState extends State<SerieA> {
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


  Widget BuildCarousel(FixtureModel? model) => Scaffold(
    appBar: AppBar(
      leading:  IconButton(onPressed: (){
        Navigator.pop(context);
      },
        icon: Icon(Icons.arrow_back),),
      title: Padding(
        padding: const EdgeInsets.only(left:100.0),
        child: Text("Serie",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
      ),
    ),
    body: SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: [
            Container(

              //   color: Colors.grey.shade50,
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 45.0,left: 15),
                  //   child: Row(
                  //     children: [
                  //       IconButton(onPressed: (){
                  //         Navigator.pop(context);
                  //       }, icon: Icon(Icons.arrow_back),color: Colors.black,),
                  //     //  Text("Discover",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,color: Colors.black)),
                  //       Spacer(),
                  //
                  //     ],
                  //   ),
                  // ),
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



                      ],
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
}