import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class RouteStack extends StatefulWidget {
  const RouteStack({super.key});

  @override
  State<RouteStack> createState() => _RouteStackState();
}

class _RouteStackState extends State<RouteStack>
    with AutomaticKeepAliveClientMixin {
  late PageController controller;
  late int _currentIndex = Get.arguments ?? 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    if (index == 3) {
      _scaffoldKey.currentState!.openEndDrawer();
      return;
    }
    controller.animateToPage(index,
        duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _listScreen = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    PageView pageView = PageView(
      controller: controller,
      onPageChanged: _onPageChanged,
      physics: const NeverScrollableScrollPhysics(),
      pageSnapping: false,
      children: _listScreen,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      key: _scaffoldKey,
      appBar: appBar(context),
      body: pageView,
    );
  }
}

AppBar appBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Theme.of(context).colorScheme.onBackground,
    flexibleSpace: SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo-removebg-preview.png",
              width: 80,
              fit: BoxFit.cover,
            ),
            const Expanded(child: SizedBox()),
            Text(
              "Accueil",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white60,
                  ),
            ),
          ],
        ),
      ),
    ),
    // title: const ,
  );
}
