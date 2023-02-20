// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calendar_app/misc/colors.dart';
import 'package:calendar_app/pageTwoDateList.dart';
import 'package:calendar_app/pageTwoItemList.dart';
import 'package:calendar_app/pageTwoSaparator.dart';
import 'package:calendar_app/pageTwoTopBar.dart';
import 'package:flutter/material.dart';

class scheduletask extends StatefulWidget {
  const scheduletask({super.key});

  @override
  State<scheduletask> createState() => _scheduletaskState();
}

class _scheduletaskState extends State<scheduletask> {
  String datenow() {
    DateTime now = DateTime.now();
    String isoDate = now.toIso8601String();
    String date = isoDate.substring(0, 10);
    return date;
  }

  String? totaltask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.textColor4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            pageTwoTopBar(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: pageTwoDateList(),
            ),
            SizedBox(
              height: 60,
              child: Center(child: pageTwoSaparator()),
            ),
            SizedBox(height: 320, child: pageTwoItemList())
          ],
        ),
      ),
    );
  }
}
