import 'package:flutter/material.dart';
import 'package:todo/Home/settings/settings_tab.dart';
import 'package:todo/Home/tasks_list/tasks_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen' ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex=0  ;
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index;
            setState((){});
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        onPressed:(){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: tabs[selectedIndex]
    );
  }
  List<Widget> tabs = [
    TasksListsTab(),
    SettingsTab()
  ];
}
