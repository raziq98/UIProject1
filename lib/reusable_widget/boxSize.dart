// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart ';

class boxSize extends StatelessWidget {
  double? height;
  double? width;
  boxSize({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return boxSize(
      width: width,
      height: height,
    );
  }
}
