import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/profile_tab.dart';
import 'package:my_portfolio/screens/projects_tab.dart';
import 'package:my_portfolio/screens/social_tab.dart';

import '../widgets/custom_tab_bar.dart';
import 'contact_tab.dart';
import 'education_tab.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kishan Singh's Portfolio"),
        bottom: CustomTabBar(tabController: _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProfileTab(),
          ProjectsTab(),
          EducationTab(),
          ContactTab(),
          SocialTab(),
        ],
      ),
    );
  }
}