import 'package:flutter/material.dart';
import 'package:fitnessapp/components/overview_box.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: OverviewBox(title: 'Total Sale', data: '234', metadata: '+15%',)),
              Expanded(child: OverviewBox(title: 'Total Covers', data: '234', metadata: '+15%',))],
          ),
          Row(
            children: [
              Expanded(child: OverviewBox(title: 'Party Sale', data: '234', metadata: '-5%',)),
              Expanded(child: OverviewBox(title: 'Alacart Sale', data: '234', metadata: '+15%',))],
          ),
          Row(
            children: [
              Expanded(child: OverviewBox(title: 'Food Sale', data: '234', metadata: '+15%',)),
              Expanded(child: OverviewBox(title: 'Bar Sale', data: '234', metadata: '-5%',))],
          ),
          Row(
            children: [
              Expanded(child: OverviewBox(title: 'Terrace Sale', data: '234', metadata: '+15%',)),
              Expanded(child: OverviewBox(title: 'In-door Sale', data: '234', metadata: '+15%',))],
          ),
          Row(
            children: [
              Expanded(child: OverviewBox(title: 'Feedbacks', data: '234', metadata: '+15%',)),
              Expanded(child: OverviewBox(title: 'Table Time', data: '234', metadata: '+15%',))],
          ),
        ],
      )
    );
  }
}
