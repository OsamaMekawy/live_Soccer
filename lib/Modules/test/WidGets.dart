import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football/Modules/test/model_fixture.dart';


Widget PageBody(List<SoccerMatch>? allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
           // padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0),
            padding: EdgeInsets.only(right: 10,left: 30,),
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
                      padding: const EdgeInsets.only(top: 130.0,left: 10),
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
                  height: 200,
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
        ),
      ),

      Expanded(
        flex: 4,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
           // color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: allmatches?.length,
                    itemBuilder: (context, index) {
                      return matchTile(allmatches?[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}


Widget goalStat(int expandedTime, int homeGoal, int awayGoal) {
  var home = homeGoal;
  var away = awayGoal;
  var elapsed = expandedTime;
  if (home == null) home = 0;
  if (away == null) away = 0;
  if (elapsed == null) elapsed = 0;
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${elapsed}'",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "${home} - ${away}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        )
      ],
    ),
  );
}


Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
     child:
     // Container(
     //   height: 200,
     //   width: 350,
     //   decoration: BoxDecoration(
     //     //  color: Colors.deepOrange,
     //       borderRadius: BorderRadius.circular(20)
     //   ),
     //   child: CarouselSlider(
     //     items:[
     //       Stack(
     //         children: [
     //           Container(
     //             height: 200,
     //             width: 350,
     //             decoration: BoxDecoration(
     //               image: DecorationImage(
     //                   image: AssetImage("assets/images/Neymar.png"),
     //                   fit: BoxFit.cover
     //               ),
     //               borderRadius: BorderRadius.circular(20),
     //             ),
     //           ),
     //           Padding(
     //             padding: const EdgeInsets.only(top: 130.0,left: 50),
     //             child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
     //           ),
     //         ],
     //       ),
     //       Stack(
     //         children: [
     //           Container(
     //             height: 200,
     //             width: 350,
     //             decoration: BoxDecoration(
     //               image: DecorationImage(
     //                   image: AssetImage("assets/images/Neymar.png"),
     //                   fit: BoxFit.cover
     //               ),
     //               borderRadius: BorderRadius.circular(20),
     //             ),
     //           ),
     //           Padding(
     //             padding: const EdgeInsets.only(top: 130.0,left: 50),
     //             child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
     //           ),
     //         ],
     //       ),
     //       Stack(
     //         children: [
     //           Container(
     //             height: 200,
     //             width: 350,
     //             decoration: BoxDecoration(
     //               image: DecorationImage(
     //                   image: AssetImage("assets/images/Neymar.png"),
     //                   fit: BoxFit.cover
     //               ),
     //               borderRadius: BorderRadius.circular(20),
     //             ),
     //           ),
     //           Padding(
     //             padding: const EdgeInsets.only(top: 130.0,left: 50),
     //             child: Text("Neymar,is the best player for this season",style: TextStyle(fontSize: 25,color: Colors.white),),
     //           ),
     //         ],
     //       ),
     //
     //     ],
     //     options: CarouselOptions(
     //         height: 250,
     //         aspectRatio: 16/9,
     //         viewportFraction: 1,
     //         initialPage: 0,
     //         enableInfiniteScroll: true,
     //         reverse: false,
     //         autoPlay: true,
     //         autoPlayInterval: Duration(seconds: 3),
     //         autoPlayAnimationDuration: Duration(seconds: 1),
     //         scrollDirection: Axis.horizontal,
     //         autoPlayCurve: Curves.fastOutSlowIn
     //     ),
     //
     //   ),
     // ),

     Column(
      children: [
        Text(
          team,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image.network(
            logoUrl,
            width: 54.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
  );
}


Widget matchTile(SoccerMatch? match) {
  var homeGoal = match?.goal!.home!;
  var awayGoal = match?.goal!.away!;
  if (homeGoal == null) homeGoal = 0;
  if (awayGoal == null) awayGoal = 0;

  return Container(
    margin: EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match!.home!.name!,
            textAlign: TextAlign.center,
            style: TextStyle(
           //   color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match!.home!.logoUrl!,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            "${homeGoal} - ${awayGoal}",
            textAlign: TextAlign.center,
            style: TextStyle(
             // color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match!.away!.logoUrl!,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            match!.away!.name!,
            textAlign: TextAlign.center,
            style: TextStyle(
         //     color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}