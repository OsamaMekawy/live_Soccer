

import 'package:flutter/material.dart';
import 'package:football/Models/teams_Models.dart';
import 'package:football/core/cach_helper.dart';
import 'package:football/core/compounts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../SignUp/signup.dart';


var boardController = PageController();

Widget buildTeamsSearch(List<TeamsData> model,context)=>Scaffold(
  // backgroundColor: Colors.white,
  appBar: AppBar(
    actions: [
      IconButton(
          onPressed: (){
            navigateFinish(context, RegisterScreen());
          }, icon: Icon(Icons.close_outlined)
      )
    ],
  ),
  body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Text("Who do you support ?",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900
        ),),
        SizedBox(height: 50,),

        // new Container(
        //   padding: EdgeInsets.only(left: 15),
        //   child: TextFormField(
        //     controller: textControler,
        //
        //     decoration: InputDecoration(
        //         border: InputBorder.none,
        //         hintText: 'بحث',suffixIcon: Icon(Icons.search)
        //     ),
        //   ),
        //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
        //   //  color: Colors.grey[200],
        //   ),
        // ),
        Container(
          height: 360,
          child:
          // GridView.count(
          //   shrinkWrap: true,
          //     physics: NeverScrollableScrollPhysics(),
          //     crossAxisCount: 3,
          //   children: List.generate(
          //       model.responce.length,
          //           (index) =>buildOnBarding(model)
          //   ),
          // )
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:3,
                mainAxisSpacing: 0,
                crossAxisSpacing: 5,
                childAspectRatio: 0.75
            ),
              itemCount: model.length,
            itemBuilder: (context,index)=>buildOnBarding(model as TeamsData ),
            //  itemCount:Osama.length ,
          ),
        ),
        SizedBox(height: 10,),
        Column(
          children: [
            SmoothPageIndicator(
                controller: boardController,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.black,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5,
                    expansionFactor: 4,
                    activeDotColor: Colors.deepOrangeAccent
                ),
                count: 3
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){

                navigateTo(context, RegisterScreen());

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(370, 45),
                backgroundColor: Colors.deepOrangeAccent,
              ),
              child: Text("Next",style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
            SizedBox(height: 8,),
            TextButton(
              onPressed: (){
                navigateTo(context, RegisterScreen());
              },
              child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),),
            ),
          ],
        )

      ],
    ),
  ),
);

Widget buildOnBarding(TeamsData model)=>SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.only(left: 10.0,right: 20,bottom: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20,),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: Colors.white,
              border: Border.all(
                  color: Colors.white12
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 7
                )
              ]
          ),
          child:  ElevatedButton(
            onPressed: (){



              showToast(text: "Team is selected", state: ToastStates.SUCSESS);
              if(ToastStates.SUCSESS != null){

                CacheHelper.saveData(key: 'id', value: model.teams.id);

              }
              print(model.teams.id);


              // navigateTo(context, RegisterScreen());

            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 45),
              backgroundColor: Colors.white,
            ),
            child: Image(
              image: NetworkImage("${model.teams.logo}",scale: 3),
            ),
          ),


        ),







      ],

    ),
  ),
);