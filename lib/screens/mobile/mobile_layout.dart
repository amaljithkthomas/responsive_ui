import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/constants/styles.dart';
import 'package:responsive_ui/screens/widgets/count_container.dart';
import 'package:responsive_ui/screens/widgets/download_button.dart';
import 'package:responsive_ui/screens/widgets/header_text_widget.dart';
import 'package:responsive_ui/screens/widgets/my_service_widget.dart';
import 'package:responsive_ui/screens/widgets/rotating_image_container.dart';
import 'package:responsive_ui/screens/widgets/social_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RotatingImageContainer(),
              const SizedBox(
                height: 20,
              ),
              HeaderTextWidget(size: size),
              const SizedBox(
                height: 20,
              ),
              SocialMobile(size: size),
              const SizedBox(
                height: 20,
              ),
              CountContainer(
                size: size,
                count: '14',
                text1: 'Years of',
                text2: 'Experience',
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.paleSlate,
                indent: size.width * .05,
                endIndent: size.width * .05,
              ),
              CountContainer(
                size: size,
                count: '50+',
                text1: 'Projects',
                text2: 'Completed',
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.paleSlate,
                indent: size.width * .05,
                endIndent: size.width * .05,
              ),
              CountContainer(
                size: size,
                count: '1.5K',
                text1: 'Happy',
                text2: 'Customers',
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.paleSlate,
                indent: size.width * .05,
                endIndent: size.width * .05,
              ),
              CountContainer(
                size: size,
                count: '1M',
                text1: 'Awesome',
                text2: 'Reviews',
              ),
              const SizedBox(
                height: 20,
              ),
              MyServiceWidget(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMobile extends StatelessWidget {
  const SocialMobile({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: DownloadButton(),
        ),
        SizedBox(
          height: 20,
        ),
        SocialWidget(),
      ],
    );
  }
}
