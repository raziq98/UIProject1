import 'package:flutter/material.dart';

import 'misc/colors.dart';

class ongoingSaparator extends StatelessWidget {
  const ongoingSaparator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('On Going',
          style: TextStyle(
              color: AppColors.textColor3,
              fontSize: 17,
              fontWeight: FontWeight.bold)),
      trailing: Text(
        'View All',
        style: TextStyle(
            color: AppColors.textColor2, fontWeight: FontWeight.normal),
      ),
    );
  }
}
