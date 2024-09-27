import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber[300],
          size: 15,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          '4.8',
          style: Styles.font16Medium,
        ),
        SizedBox(
          width: 5.w,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(245)',
            style: Styles.font14Regular,
          ),
        ),
      ],
    );
  }
}
