import 'package:flutter/material.dart';
import 'package:flutter_projects/common/app_style.dart';
import 'package:flutter_projects/common/reusable_text.dart';
import 'package:flutter_projects/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({
    super.key,
    this.onTap,
    required this.text,
    required this.iconPath,
  });

  final void Function()? onTap;
  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 40.w,
            height: 40.h,
          ),
          ReusableText(
            text: text,
            style: appStyle(11, kGray, FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
