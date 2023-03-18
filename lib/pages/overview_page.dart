import 'package:fitnessapp/components/date_range_box.dart';
import 'package:flutter/material.dart';
import 'package:fitnessapp/components/user_greeting_banner.dart';
import 'package:fitnessapp/components/overview_container.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      //   backgroundColor: Color.fromRGBO(73, 81, 186, 0.08),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.deepPurple[700],
          unselectedItemColor: Colors.black26,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Stewards"),
            BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Trends"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_page_rounded), label: "Feedbacks"),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Marketing"),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SfDateRangePicker(),
              UserGreetingBanner(),
              SizedBox(height: 20,),
              DateRangeBox(),
              SizedBox(height: 20,),
              OverviewContainer()
            ],
          ),
        )
    );
  }
}
