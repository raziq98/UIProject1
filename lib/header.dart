// ignore_for_file: prefer_const_constructors

import 'package:calendar_app/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/reusable_widget/anyText.dart';

class header extends StatelessWidget {
  const header({super.key});
  String datenow() {
    DateTime now = DateTime.now();
    String isoDate = now.toIso8601String();
    String date = isoDate.substring(0, 10);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(color: Color(0xFF1C252E)),
      child: SafeArea(
        child: Center(
          child: ListTile(
              title: const Text(
                'Hey Raziq',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              subtitle: Text(
                datenow(),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.zero,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('image/Hotpot.png'),
                ),
              )),
        ),
      ),
    );
  }
}
