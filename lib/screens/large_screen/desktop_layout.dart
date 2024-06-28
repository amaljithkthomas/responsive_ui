import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/constants/styles.dart';
import 'package:responsive_ui/screens/widgets/count_container.dart';
import 'package:responsive_ui/screens/widgets/gradient_text_widget.dart';
import 'package:responsive_ui/screens/widgets/header_text_widget.dart';
import 'package:responsive_ui/screens/widgets/my_service_widget.dart';
import 'package:responsive_ui/screens/widgets/rotating_image_container.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

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
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * .05),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        HeaderTextWidget(size: size),
                        const SizedBox(
                          height: 20,
                        ),
                        SocialLarge(size: size)
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: size.height * .60,
                        child: const Column(
                          children: [
                            RotatingImageContainer(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountContainer(
                      size: size,
                      count: '14',
                      text1: 'Years of',
                      text2: 'Experience',
                    ),
                    CountContainer(
                      size: size,
                      count: '50+',
                      text1: 'Projects',
                      text2: 'Completed',
                    ),
                    CountContainer(
                      size: size,
                      count: '1.5K',
                      text1: 'Happy',
                      text2: 'Customers',
                    ),
                    CountContainer(
                      size: size,
                      count: '1M',
                      text1: 'Awesome',
                      text2: 'Reviews',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.012,
              ),
              Container(
                color: AppColors.ebony,
                padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                child: Column(
                  children: [
                    GradientText(
                      'My Quality Services',
                      colors: const [
                        AppColors.studio,
                        AppColors.paleSlate,
                      ],
                      style: TextStyle(
                          fontSize: size.width * 0.030,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.',
                      style: TextStyle(
                          fontSize: size.width * 0.012,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    MyServiceWidget(
                      size: size,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
