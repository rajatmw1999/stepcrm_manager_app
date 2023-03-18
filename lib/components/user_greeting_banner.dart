import 'package:flutter/material.dart';

class UserGreetingBanner extends StatelessWidget {
  // const UserGreetingBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return
      Container(
        height: height*0.15,
        decoration: BoxDecoration(
          color: Colors.deepPurple[700],
            borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(width*0.5, height*0.1), bottomRight: Radius.elliptical(width*0.5, height*0.1)),
          boxShadow: [const BoxShadow(color: Colors.black26, offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4)]
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: Colors.white, size: 25,
              shadows: [const BoxShadow(color: Colors.black26, offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4),
              ]),
              Text(
                "Good Morning, Manoj.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    const BoxShadow(color: Colors.black26, offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4),
                  ]
                ),
              )
            ],
          ),
        ),
      );
  }
}
