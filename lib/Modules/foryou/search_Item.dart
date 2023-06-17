import 'package:flutter/material.dart';


class SearchItam extends StatefulWidget {
  const SearchItam({Key? key}) : super(key: key);

  @override
  State<SearchItam> createState() => _SearchItamState();
}

class _SearchItamState extends State<SearchItam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined,),
        title: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text("Player Name",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
        ),

      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 250,
              width: 500,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black26,
                    offset: Offset(5, 2)
                  )
                ],
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Neymar.png")
                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 15),
            child: Row(
              children: [
                Text("Fall Name :",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
                SizedBox(width: 7,),
                Text("Naymar Jr",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
                Text("/",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
                Container(height: 30,width: 30,child: Image(image: AssetImage('assets/images/city.png')))
              ],
            ),
          ),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 15),
            child: Row(
              children: [
                Text("Age :",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
                SizedBox(width: 7,),
                Text("28",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
              ],
            ),
          ),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 15),
            child: Row(
              children: [
                Text("Club :",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
                SizedBox(width: 7,),
                Container(height: 30,width: 30,child: Image(image: AssetImage("assets/images/city.png",),)),
                SizedBox(width: 7,),
                Text("Manchester city",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
              ],
            ),
          ),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 15),
            child: Row(
              children: [
                Text("Rote :",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900, fontSize: 17),),
                SizedBox(width: 7,),
                Text("Wing Left",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900, fontSize: 17),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 80,
            width: 390,
            decoration: BoxDecoration(
             // color: Colors.black,
              borderRadius: BorderRadius.circular(15),

            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Played",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        SizedBox(height: 8,),
                        Text("20",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

                      ],
                    ),
                  ),
                  SizedBox(width: 35,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Wins",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        SizedBox(height: 8,),
                        Text("10",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

                      ],
                    ),
                  ),
                  SizedBox(width: 35,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Goals",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        SizedBox(height: 8,),
                        Text("5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

                      ],
                    ),
                  ),
                  SizedBox(width: 35,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Assist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        SizedBox(height: 8,),
                        Text("8",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),

          )
        ],
      ),

    );
  }
}
