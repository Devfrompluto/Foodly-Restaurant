import 'package:flutter/material.dart';
import 'package:flutter_projects/common/background_container.dart';
import 'package:flutter_projects/common/custom_appbar.dart';
import 'package:flutter_projects/constants/constants.dart';
import 'package:flutter_projects/views/home/widgets/home_tiles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        flexibleSpace: const CustomAppbar(),
      ),
      body: BackGroundContainer(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 15.h),
            const HomeTiles(),
          ],
        ),
      ),
    );
  }
}
