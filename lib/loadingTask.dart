// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, file_names

import 'package:calendar_app/misc/colors.dart';
import 'package:calendar_app/reusable_widget/loadingtask.dart';
import 'package:flutter/material.dart';

class loadingTask extends StatelessWidget {
  loadingTask({super.key});
  List<loadingtask> taskloading = [
    loadingtask(
        "image/rocket-launch.png", 'Startup Website Design with responsive'),
    loadingtask("image/new.png", 'Product Design Task Management app'),
    loadingtask("image/others.png", 'Finance Website & '),
  ];
  String datenow() {
    DateTime now = DateTime.now();
    String isoDate = now.toIso8601String();
    String date = isoDate.substring(0, 10);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: taskloading.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 120,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(47, 158, 158, 158),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: SizedBox(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      taskloading[index].detail,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor3,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image(
                            image: AssetImage('image/ezgif.com-resize.png'),
                          ),
                        ),
                        Text(
                          datenow(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: AppColors.textColor3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
