import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_lesson/views/home_page/repository/home_screen.dart';
import 'package:todo_lesson/views/main_page/controller/nav_bar_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  ButtomNavBarController controller = ButtomNavBarController();
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Index 1: Business', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return IndexedStack(
          index: controller.selectedIndex,
          children: _widgetOptions,
        );
      }),
      bottomNavigationBar: Observer(
        builder: (context) => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_travel_outlined), label: 'Send'),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_drive_file_rounded),
                label: 'Statistics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wysiwyg_outlined), label: 'Learn'),
          ],
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: controller.onItemTapped,
          unselectedItemColor: Colors.black45,
        ),
      ),
    );
  }
}
