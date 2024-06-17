import "package:flutter/material.dart";

class TabBarpro extends StatelessWidget {
const TabBarpro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        DefaultTabController(
        length: 3,
        child: Container(
        child: const TabBar(
          tabs: [
          Tab(text: 'places',),
          Tab(text: 'hehe',),
        ]
        ),
      ),
      ),
      TabBarView(children: [
        Container(child: Text('fff'),),
         Container(child: Text('ffffffff'),),
        Container(child: Text('ffffffffffff'),),
      ])

      ]
      
    );
  }
}