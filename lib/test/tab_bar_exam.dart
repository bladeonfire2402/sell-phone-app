import "package:flutter/material.dart";

class TabBarExam extends StatefulWidget {
  const TabBarExam({Key? key}) : super(key: key);

  @override
  _TabBarExamState createState() => _TabBarExamState();
}

class _TabBarExamState extends State<TabBarExam> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,initialIndex: 1,
     child: Scaffold(
      appBar: AppBar(
        title: const Text("TabBar"),
        bottom: TabBar(
          tabs: [
            Tab(text: 'helo',),
            Tab(text: 'helo',),
            Tab(text: 'helo',),

          ],),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("it"),

          ),
          Center(
            child: Text('ff'),
          ),
          Center(
            child: Text('fff'),
          )
        ],),


      )
     );
  }
}
