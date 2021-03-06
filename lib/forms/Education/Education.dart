import 'package:flutter/material.dart';

import '../../module/functions.dart';
import 'Course/Course.dart';
import 'Teacher/Teacher.dart';
import 'Topic/Topic.dart';

class FmEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IntBloc _sec = IntBloc()..setValue(1);
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Container(
        child: StreamBuilder<int>(
          stream: _sec.stream$,
          builder: (context, snap)=>DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(child: Text('دوره ها')),
                    Tab(child: Text('سرفصل ها')),
                    Tab(child: Text('اساتید')),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    FmCourse(),
                    FmTopic(),
                    FmTeacher(),
                  ]),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}