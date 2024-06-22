import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/social_widget.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.studio,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Download CV',
                  style: TextStyle(
                    color: AppColors.studio,
                  ),
                ),
                SizedBox.square(
                  dimension: 12,
                ),
                FaIcon(
                  FontAwesomeIcons.download,
                  color: AppColors.studio,
                  size: 18,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const SocialWidget(),
        ],
      ),
    );
  }
}
