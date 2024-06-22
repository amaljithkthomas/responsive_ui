import 'package:flutter/material.dart';
import 'package:responsive_ui/screens/large_screen/desktop_layout.dart';
import 'package:responsive_ui/screens/mobile/mobile_layout.dart';
import 'package:responsive_ui/screens/tab/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return const DesktopLayout();
      } else if (constraints.maxWidth > 600) {
        return const TabletLayout();
      } else {
        return const MobileLayout();
      }
    });
  }
}
