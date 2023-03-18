import 'package:flutter/material.dart';

class OverviewBox extends StatelessWidget {
  // const OverviewBox({Key? key}) : super(key: key);

  String title, data, metadata;

  OverviewBox({required this.title, required this.data, required this.metadata});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          boxShadow: [const BoxShadow(color: Colors.black26, offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4)],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(this.title, style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold
                ))
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(this.data, style: TextStyle(
                      fontSize: 50,
                      color: Colors.deepPurple[700],
                      fontWeight: FontWeight.bold
                  ))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(this.metadata, style: TextStyle(
                      fontSize: 20,
                      color: this.metadata.substring(0,1) == '+' ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold
                  ))
                ])
          ],
        ),
      ),
    );
  }
}
