import 'package:flutter/material.dart';
import 'package:responsive_dashboard/adaptive_layout/adaptive_layout.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widget/Tablet_layout/Tablet_layout.dart';
import 'package:responsive_dashboard/widget/desctop_layout.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawar/custom_drawer.dart';
import 'package:responsive_dashboard/widget/mobile_layout/mobile_layout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFAAAAAA),
      body: AdabtiveLayout(
          MobileLayout: (context) => const Mobile_layout(),
          TablietLayout: (context) => const TabletLayout(),
          DesktopLayout: (context) => const DesctopLayout()),
    );
  }
}
