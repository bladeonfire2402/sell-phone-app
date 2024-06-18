import 'package:cellphone/components/button_switch.dart';
import 'package:cellphone/components/categories/Categories_widget.dart';
import 'package:cellphone/components/item_widget.dart';
import 'package:cellphone/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CellphoneHomepage extends StatefulWidget {
  const CellphoneHomepage({Key? key}) : super(key: key);

  @override
  _CellPhoneHomePage createState() => _CellPhoneHomePage();
}

class _CellPhoneHomePage extends State<CellphoneHomepage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.all(16.0), // Thêm padding để có khoảng cách bên trong
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(10.0),
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
                    children: [
                      Icon(
                        Icons.menu,
                        size: 50,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Spacer(), // Thêm khoảng cách giữa icon và hình ảnh
                      ClipOval(
                        child: Image.asset(
                          'assets/images/ssss.jpg',
                          width: 50.0,
                          height: 50.0,   
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi',
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primaryFixed),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Trải nghiệm công nghệ tương lai',
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primaryFixed),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //SearchWidget
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      suffixIcon: Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 12,color: Colors.grey,fontFamily: "Montserrat",fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Collection",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primaryFixed),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
               
                  //CategoriesWidget
                  CategoriesWidget(),
    
                  //ItemWidget
                  ItemWidget(),
                  const SizedBox(height: 50,)
                  

                  
               
                ],
              ),
            ),
          
             
          ],
        ),
      ),
    );
  }
}
