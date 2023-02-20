// ignore: file_names
// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names, duplicate_ignore
import 'package:flutter/material.dart';

// ignore: camel_case_types
class reusableWidget extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double rad;
  const reusableWidget({
    Key? key,
    required this.color,
    required this.width,
    required this.height,
    required this.rad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(rad),
      color: color,
      width: width,
      height: height,
    );
  }
}
