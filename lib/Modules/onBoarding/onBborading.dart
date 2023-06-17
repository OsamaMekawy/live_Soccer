import 'package:flutter/material.dart';
import 'package:football/Modules/SignUp/signup.dart';
import 'package:football/Modules/onBoarding/teams_search.dart';
import 'package:football/core/cach_helper.dart';
import 'package:football/core/compounts.dart';
import 'package:football/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';





class OnBboarding extends StatefulWidget {
  @override
  State<OnBboarding> createState() => _OnBboardingState();
}

class _OnBboardingState extends State<OnBboarding> {
 // const OnBboarding({Key? key}) : super(key: key);
  var boardController = PageController();

  List<BoardingModels>boardings=[
    BoardingModels(
        image: "assets/images/Soccer-pana.png",
        body: "Never miss a game",
        title: "Make an account and set notification"
            "for the game you want to watch "
            "for the game you want to watch"
    ),
    BoardingModels(
        image: "assets/images/Soccer-bro.png",
        body: "Personal suggestions",
        title: "To get the best of out this app, we want"
            "to make personal experience for you "
            "and your football interstes"
    ),
    BoardingModels(
      teamsSearch:SoccerAppteams()
    )


  ];
  void submit(){
    CacheHelper.saveData(key: 'onBboarding', value: true).then((value) {
      if(value)
      {
        navigateFinish(context, RegisterScreen());
      }
    });

  }
  bool isLast = false;
  bool isthird = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:submit, icon: Icon(Icons.close_outlined))
        ],
      ),
       body: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           children: [
             Container(
               height: 440,
               child: PageView.builder(
                 controller: boardController,
                 onPageChanged: (int index){
                   if(index== boardings.length-1){
                     navigateFinish(context, TeamsSearch());
                   }

                   if(index ==boardings.length-1){
                     setState(() {
                       isLast = true;
                     });
                   }else{
                     setState(() {
                       isLast = false;
                     });
                   }
                 },
                 physics: BouncingScrollPhysics(),
                   itemBuilder: (context,index)=>buildOnBarding(boardings[index]),
                 itemCount: boardings.length,
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
                     count: boardings.length
                 ),
                 SizedBox(height: 10,),
                 ElevatedButton(
                   onPressed: (){
                     if(isthird){
                       navigateTo(context,TeamsSearch());
                     }

                     if(isLast){
                       submit();
                     }else{
                       boardController.nextPage(
                           duration: Duration(
                               milliseconds: 750
                           ),
                           curve: Curves.fastLinearToSlowEaseIn
                       );
                     }

                   },
                   style: ElevatedButton.styleFrom(
                       minimumSize: Size(370, 45),
                       backgroundColor: Colors.deepOrangeAccent,
                   ),
                   child: Text("Next",style: TextStyle(fontSize: 18,color: Colors.white),),
                 ),
                 SizedBox(height: 8,),
                 TextButton(
                   onPressed: submit,
                     child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),),
                 ),

               ],
             )

           ],
         ),
       )
    );
  }

  Widget buildOnBarding(BoardingModels models)=>Padding(
    padding: const EdgeInsets.only(left: 60.0,right: 50,bottom: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 250,
            width: 250,
            child: Image(image: AssetImage("${models.image}"))),
        SizedBox(height: 20,),
        Text("${models.body}",
          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),
        ),
        SizedBox(height: 15,),
        Text("${models.title}",
          style: TextStyle(fontSize: 15,color: Colors.grey[700]),
        ),
      ],
    ),
  );
}




class BoardingModels{
  final String? image;
  final String? title;
  final String ?body;
  SoccerAppteams? teamsSearch;



  BoardingModels({ this.image, this.body, this.title,this.teamsSearch});
}
