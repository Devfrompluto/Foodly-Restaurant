import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? kLightWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        image: DecorationImage(
            image: AssetImage(
              'assets/images/restaurant_bk.png',
            ),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
