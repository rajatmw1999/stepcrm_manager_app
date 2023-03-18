import 'package:flutter/material.dart';
// import 'navi'

class ProfileScreen extends StatelessWidget {
  // const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(

        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087)
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label:"Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label:"Profile")
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: height*0.38,
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.grey,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 32, right: 16),
                    child: Text("Meals for today"),
                  ),
                  Expanded(
                    child: Container(
                        color: Colors.redAccent
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueAccent
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
