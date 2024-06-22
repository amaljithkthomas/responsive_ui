import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/social_section.dart';
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
        vertical: size.height * 0.18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'I am Gerold',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Poppins'),
          ),
          GradientText(
            'Web Developer +\nUX Designer',
            colors: const [
              AppColors.studio,
              AppColors.paleSlate,
            ],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: const Text(
              'I breakdown complex user experience problem to create integrity focussed solution that connect billions of people.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Container(
            width: size.width * 0.5,
            child: const SocialSection(),
          )
        ],
      ),
    );
  }
}
