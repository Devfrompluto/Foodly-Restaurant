import 'package:flutter/material.dart';
import 'package:flutter_projects/common/app_style.dart';
import 'package:flutter_projects/common/background_container.dart';
import 'package:flutter_projects/common/reusable_text.dart';
import 'package:flutter_projects/constants/constants.dart';
import 'package:flutter_projects/constants/uidata.dart';
import 'package:flutter_projects/views/foods/widgets/food_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondary,
        title: ReusableText(
          text: 'Food List',
          style: appStyle(18, kLightWhite, FontWeight.w600),
        ),
      ),
      body: BackGroundContainer(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: ListView.builder(
            itemBuilder: (context, i) {
              final food = foods[i];
              return FoodTile(
                food: food,
              );
            },
            itemCount: foods.length,
          ),
        ),
      ),
    );
  }
}
