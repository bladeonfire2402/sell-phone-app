import "package:flutter/material.dart";

class CategoriesWidget extends StatelessWidget {
const CategoriesWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1;i<10;i++)
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 229, 229),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text('Iphone',style: TextStyle(
              fontFamily: "Montserrat",
             
              fontSize: 14),),
          )
        ],
      ),
    );
  }
}