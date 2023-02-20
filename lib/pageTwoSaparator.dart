// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'misc/colors.dart';

class pageTwoSaparator extends StatelessWidget {
  const pageTwoSaparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListTile(
            leading: modifiedtext(
              data: 'Total Task',
              size: 20,
              cOlor: AppColors.textColor3,
            ),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white54, Colors.blueAccent],
                ),
              ),
              child: Center(
                child: modifiedtext(
                  data: '23',
                  size: 20,
                  cOlor: Colors.black,
                ),
              ),
            )),
      ),
    );
  }
}

class modifiedtext extends StatelessWidget {
  const modifiedtext({
    Key? key,
    required this.data,
    required this.size,
    required this.cOlor,
  }) : super(key: key);

  final String data;
  final double size;
  final Color cOlor;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: cOlor,
        fontSize: size,
      ),
    );
  }
}
