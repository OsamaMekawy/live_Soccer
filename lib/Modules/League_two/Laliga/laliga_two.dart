import 'package:flutter/material.dart';

class LaLigaTwo extends StatefulWidget {
  const LaLigaTwo({Key? key}) : super(key: key);

  @override
  State<LaLigaTwo> createState() => _LaLigaTwoState();
}

class _LaLigaTwoState extends State<LaLigaTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
                      SizedBox(width: 90,),
                      Text("LaLiga ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
                    ],
                  ),
                ),
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Row(
                    children: [
                      Text("The table",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,)),
                      //  SizedBox(width: 5,),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
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

                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                  child: Divider(color: Colors.grey.shade600,),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: Row(
                    children: [
                      Text("5",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("6",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("6",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("7",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                  child: Divider(color: Colors.grey.shade600,),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: Row(
                    children: [
                      Text("8",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("9",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("10",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("11",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                  child: Divider(color: Colors.grey.shade600,),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: Row(
                    children: [
                      Text("12",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("13",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("14",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("15",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                      SizedBox(width: 12,),
                      Image(width: 25,height:25,image: AssetImage("assets/images/OIP.png"),),
                      SizedBox(width: 10,),
                      Text("Manchester United",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                      Spacer(),
                      Text('17',style: TextStyle(fontSize: 12,color: Colors.black),),
                      SizedBox(width: 10,),
                      Text('13',style: TextStyle(fontSize: 12,color: Colors.black),),
                      SizedBox(width: 10,),
                      Text('33',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.black),),


                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                  child: Divider(color: Colors.grey.shade600,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: Row(
                    children: [
                      Text("16",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                  child: Divider(color: Colors.grey.shade600,),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: Row(
                    children: [
                      Text("17",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("18",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("19",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                      Text("20",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
      ),
    );
  }
}
