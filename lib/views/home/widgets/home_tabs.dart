import 'package:flutter/material.dart';
import 'package:flutter_projects/common/app_style.dart';
import 'package:flutter_projects/common/tab_widget.dart';
import 'package:flutter_projects/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        height: 25.h,
        width: width,
        decoration: BoxDecoration(
          color: kOffWhite,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: TabBar(
          tabs: List.generate(orderList.length, (i) {
            return TabWidget(text: orderList[i]);
          }),
          controller: _tabController,
          indicator: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(25.r),
          ),
          isScrollable: true,
          labelColor: kLightWhite,
          dividerColor: Colors.transparent,
          unselectedLabelColor: kGrayLight,
          tabAlignment: TabAlignment.start,
          labelPadding: EdgeInsets.zero,
          labelStyle: appStyle(12, kLightWhite, FontWeight.w600),
          unselectedLabelStyle: appStyle(12, kGrayLight, FontWeight.normal),
        ),
      ),
    );
  }
}
