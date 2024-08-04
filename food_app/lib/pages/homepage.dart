import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/appbar.dart';
import 'package:food_app/pages/rewardpage.dart';
import 'package:food_app/pages/scorepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Specify the length of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TabBar(
                  unselectedLabelColor: Color(0xff63676D),
                  labelColor: Color(0xff62BF26),
                  indicatorColor: Color(0xff62BF26),
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: 'แต้มสะสม',
                    ),
                    Tab(
                      text: 'แลกของ',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Tab1(),
                    Tab2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
