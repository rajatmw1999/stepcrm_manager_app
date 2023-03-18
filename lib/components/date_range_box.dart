import 'package:flutter/material.dart';

class DateRangeBox extends StatelessWidget {
  const DateRangeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.center,
      width: width*0.9,
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [const BoxShadow(color: Colors.black26, offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children:[
          Text("DD/MM/YY ", style: TextStyle(color: Colors.grey, fontSize: 16)),
          Text(" - ", style: TextStyle(color: Colors.grey, fontSize: 16)),
          Text(" DD/MM/YY", style: TextStyle(color: Colors.grey, fontSize: 16)),]
          ),
          Icon(Icons.calendar_today)
        ]
      ),
    );
  }
}
