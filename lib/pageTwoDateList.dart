// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'misc/colors.dart';

class pageTwoDateList extends StatefulWidget {
  const pageTwoDateList({super.key});

  @override
  State<pageTwoDateList> createState() => _pageTwoDateListState();
}

class _pageTwoDateListState extends State<pageTwoDateList> {
  int daysInMonth =
      DateUtils.getDaysInMonth(DateTime.now().year, DateTime.now().month);

  List<String> getWeekdayAbbreviationsForMonth() {
    final date = DateTime(DateTime.now().year, DateTime.now().month);
    final daysInMonth = DateTime(date.year, date.month + 1, 0).day;
    final weekdays = Iterable.generate(
            daysInMonth, (i) => DateTime(date.year, date.month, i + 1))
        .map((date) => DateFormat('E').format(date))
        .toList();
    return weekdays;
  }

  String dayOfWeek = DateFormat('E').format(DateTime.now());
  int? _selected;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daysInMonth,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        num = index + 1;
        final weekday = getWeekdayAbbreviationsForMonth();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selected = index;
              });
            },
            child: Container(
              width: 60,
              decoration: BoxDecoration(
                  gradient: _selected == index
                      ? const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.white54],
                        )
                      : const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(47, 158, 158, 158),
                            Color.fromARGB(47, 158, 158, 158),
                          ],
                        ),
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    num.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor3,
                    ),
                  ),
                  Text(
                    weekday[index],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
