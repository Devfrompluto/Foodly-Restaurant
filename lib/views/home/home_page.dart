import 'package:flutter/material.dart';
import 'package:flutter_projects/common/background_container.dart';
import 'package:flutter_projects/common/custom_appbar.dart';
import 'package:flutter_projects/constants/constants.dart';

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
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
