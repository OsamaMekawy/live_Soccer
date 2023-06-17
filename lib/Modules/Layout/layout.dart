import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football/core/cubit.dart';
import 'package:football/core/states.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = AppCubit.get(context);
        return Scaffold(

            // appBar: AppBar(
            //   title: Padding(
            //     padding: const EdgeInsets.only(bottom: 38.0),
            //     child: Text("Discover",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black),),
            //   ),
            //   actions: [
            //     Padding(
            //         padding: const EdgeInsets.only(bottom: 10.0,right: 15),
            //
            //         child: IconButton(onPressed: (){}, icon:Icon( Icons.person,color: Colors.blue,size: 25,))
            //
            //     )
            //   ],
            // ),
          body : cubit.bottomScreen[cubit.currentindex],
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          onTap: (index){
            cubit.changeBottomNav(index);
          },
          currentIndex: cubit.currentindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 30,),

              label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer_outlined,size: 25,),
               label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star,size: 25,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.wine_bar_sharp,size: 25,),
                label: ""
            ),
          ],

        )
        );
      },

    );
  }
}