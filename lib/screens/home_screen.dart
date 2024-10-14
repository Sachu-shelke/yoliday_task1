import 'package:flutter/material.dart';

import '../tabs/achivementtab.dart';
import '../tabs/projecttab.dart';
import '../tabs/savedtab.dart';
import '../tabs/sharedtab.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  "Portfolio",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                ),
                Spacer(),
                Icon(
                  Icons.shopping_bag,
                  color: Color(0xffdf5532),
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xffdf5532),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Text("Project")),
              Tab(child: Text("Saved")),
              Tab(child: Text("Shared")),
              Tab(child: Text("Achievement")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProjectTab(),
            SavedTab(),
            SharedTab(),
            AchievementTab(),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5), // Add some space between the icon and the text
                  Text(
                    "Filter",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          fixedColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center_outlined),
              label: "Portfolio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_rounded),
              label: "Input",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
