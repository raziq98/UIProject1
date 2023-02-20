// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_web_libraries_in_flutter, unused_import, duplicate_ignore, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:math';

import 'package:calendar_app/ongoingTask.dart';
import 'package:calendar_app/header.dart';
import 'package:calendar_app/loadingTask.dart';
import 'package:calendar_app/misc/colors.dart';
import 'package:calendar_app/ongoingSaparator.dart';
import 'package:calendar_app/reusable_widget/boxSize.dart';
import 'package:calendar_app/reusable_widget/taskInfo.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String datenow() {
    DateTime now = DateTime.now();
    String isoDate = now.toIso8601String();
    String date = isoDate.substring(0, 10);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: header(),
      ),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Task',
                  style: TextStyle(
                    color: AppColors.textColor3,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: ongoingTask(),
            ),
            SizedBox(
              height: 70,
              child: ongoingSaparator(),
            ),
            Expanded(flex: 1, child: loadingTask())
          ],
        ),
      ),
    );
  }
}
