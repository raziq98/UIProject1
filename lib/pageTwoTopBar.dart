// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:quiver/async.dart';

import 'misc/colors.dart';

class pageTwoTopBar extends StatelessWidget {
  const pageTwoTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: SafeArea(
        child: Center(
          child: ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Schedule',
              style: TextStyle(
                  color: AppColors.textColor3,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            trailing: IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const SimpleDialog(
                        backgroundColor: Color(0xFF1C252E),
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              color: Color(0xFFFFFFFF),
                            ),
                            title: Text(
                              "Profile",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.settings,
                              color: Color(0xFFFFFFFF),
                            ),
                            title: Text(
                              "Settings",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.info,
                              color: Color(0xFFFFFFFF),
                            ),
                            title: Text(
                              "About",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }
}
