import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/download_button.dart';
import 'package:responsive_ui/screens/widgets/gradient_text_widget.dart';
import 'package:responsive_ui/screens/widgets/social_widget.dart';
import 'package:responsive_ui/screens/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: size.width > 600
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextWidget(
            size: size,
            text: 'I am Gerold',
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            align: TextAlign.center,
          ),
          GradientTextWidget(
            size: size,
            text1: 'Web Developer',
            text2: 'UX Designer',
          ),
          SizedBox(
            width: size.width * 0.5,
            child: TextWidget(
              size: size,
              text:
                  'I breakdown complex user experience problem to create integrity focussed solution that connect billions of people.',
              align: TextAlign.center,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  const SocialLarge({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadButton(),
          SizedBox(
            width: 20,
          ),
          SocialWidget(),
        ],
      ),
    );
  }
}
