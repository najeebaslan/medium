import 'package:flutter/material.dart';
import 'package:medium/pages/seconde_screen.dart';
import 'package:medium/pages/third_screen.dart';

import 'fourth_screen.dart';
import 'home_screen.dart';

class NavigattorScreen extends StatefulWidget {
  const NavigattorScreen({Key? key}) : super(key: key);

  @override
  State<NavigattorScreen> createState() => _NavigattorScreenState();
}

class _NavigattorScreenState extends State<NavigattorScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  static List<Widget> listWidget = [
    const HomePage(),
    const SecondePage(),
    const ThirdPage(),
    const FourthPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            leading: IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                onPressed: () {}),
            bottom: TabBar(
              unselectedLabelStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              labelColor: Colors.black,
              labelStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              controller: _tabController,
              indicatorWeight: 1,
              tabs: [
                ...List<Widget>.generate(
                    listOfStrings.length,
                    (index) => Tab(
                          // icon: Icon(
                          //   listOfIcons[index],
                          //   size: 30.0,
                          // ),
                          child: Text(
                            listOfStrings[index],
                          ),
                        ))
              ],
            ),
          ),
          body: TabBarView(controller: _tabController, children: [
            ...List<Widget>.generate(
                listWidget.length, (index) => listWidget[index]),
          ]),
        ),
      ),
    );
  }

  List<String> listOfStrings = [
    'الرئيسية',
    'الأقسام',
    'المنشورات',
    'الإعدادات',
  ];
}
