// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:calendar_app/schedule.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/reusable_widget/taskInfo.dart';
import 'package:calendar_app/misc/colors.dart';

class ongoingTask extends StatefulWidget {
  const ongoingTask({super.key});

  @override
  State<ongoingTask> createState() => _ongoingTaskState();
}

class _ongoingTaskState extends State<ongoingTask> {
  List<taskInfo> taskinfo = [
    taskInfo("image/rocket-launch.png", 'UI/UX design'),
    taskInfo("image/new.png", 'Sketch'),
    taskInfo("image/others.png", 'Others'),
  ];

  int? _selected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: taskinfo.length,
        itemBuilder: (BuildContext context, int index) {
          // ignore: duplicate_ignore
          return InkWell(
            onTap: () {
              setState(() {
                _selected = index;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return scheduletask();
                  },
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 10,
                width: 150,
                decoration: BoxDecoration(
                  gradient: _selected == index
                      ? LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.blue, Colors.lightBlue],
                        )
                      : LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(47, 158, 158, 158),
                            Color.fromARGB(47, 158, 158, 158),
                          ],
                        ),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: OverflowBox(
                  maxHeight: 170,
                  maxWidth: 170,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 30.0,
                          spreadRadius: 0.5,
                        ),
                      ],
                      gradient: _selected == index
                          ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white54, Colors.blue],
                            )
                          : LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(47, 158, 158, 158),
                                Color.fromARGB(47, 158, 158, 158),
                              ],
                            ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image(
                            image: AssetImage(taskinfo[index].pict),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          child: Text(
                            taskinfo[index].detail,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: AppColors.textColor3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ignore: prefer_const_constructors
              ),
            ),
          );
        });
  }
}
