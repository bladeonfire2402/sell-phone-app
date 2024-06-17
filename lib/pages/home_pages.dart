import 'package:cellphone/pages/cellphone_homepage.dart';
import 'package:cellphone/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: navController.selectedIndex.value,
          backgroundColor: Colors.white,
          onDestinationSelected: (index) {
            navController.selectedIndex.value = index;
            // Add navigation logic here if needed
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.notifications), label: ''),
            NavigationDestination(icon: Icon(Icons.interests), label: ''),
            NavigationDestination(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
      body: Obx(() {
        switch (navController.selectedIndex.value) {
          case 0:
            return CellphoneHomepage();
          case 1:
            return SearchScreen();
          case 2:
            return ProfileScreen();
          case 3:
            return const Test();
          default:
            return Container();
        }
      }),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
}

// Dummy Screens for illustration purposes
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class HeartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Heart Screen'),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}
