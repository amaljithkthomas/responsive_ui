import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/constants/styles.dart';
import 'package:responsive_ui/screens/widgets/header_text_widget.dart';
import 'package:responsive_ui/screens/widgets/rotating_image_container.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          HeaderTextWidget(size: size),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: size.height * .75,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [RotatingImageContainer()],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
