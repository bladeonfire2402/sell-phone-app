import "package:flutter/material.dart";
import "package:get/get.dart";

class ItemWidget extends StatelessWidget {
const ItemWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.57,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i=0;i<10;i++)
        Container(
          margin: EdgeInsets.only(right: 15,bottom: 20),

          padding: EdgeInsets.only(left: 15,right: 15,top:10),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(20),
             boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 2,
                    spreadRadius: 1.0,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 4,bottom: 4,right: 8,left: 8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      '-50%',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontSize: 10,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 20,
                    )
                ],
              ),
                const SizedBox(height: 10,),
              InkWell(
                
                onTap: (){},
                child: Container(
                  child: Image(
                    width: 120,
                    height: 120,
                    image: AssetImage("assets/images/iphone13.jpg"),)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              

              //Product intro descripton
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'Iphone 14 Pro ',
                 style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.primaryFixed,
                      fontWeight: FontWeight.bold,
                    ),

                ),
              ),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'Write description of the products',
                 style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 9,
                      color: Color.fromARGB(255, 17, 120, 204),
                    ),

                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                Text(
                '\$1000',
                 style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primaryFixed,
                    ),

                ),
                Spacer(),
                Icon(
                  Icons.shopping_cart_checkout,
                  color: Theme.of(context).colorScheme.primaryFixed,
                )

                ],
              ),
            
             
            ],
          ),
        )
      ],
    );
  }
}