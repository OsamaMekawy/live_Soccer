import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0,left: 10),
              child: Container(
                height: double.infinity,
                child: Column(
                  children: [
                    Text("Privcy Policy   What is the Privacy Policy and what oes it cover?",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Text("if you go to Matches Screen you will find all matches in day and find teams that you following ",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Text("and if you go to Statectics Screen you will find all teams statestics before the match and after   ",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Text("Now we want to search about any player ,"
                        "in this case you must do to Star Screen there you can find all Players and his teams   ",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Text("Discover Screen is show us players news and teams in section two you wil see todayes matches this section is show us all matches in day that you following and all ",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                    Text("Discover Screen is show us players news and teams in section two you wil see todayes matches this section is show us all matches in day that you following and all ",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                    ),
                  ],
                ),


              ),
            ),
          )
        ],
      ),
    );
  }
}
