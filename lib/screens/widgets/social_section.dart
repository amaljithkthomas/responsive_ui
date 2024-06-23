import 'package:flutter/material.dart';
import 'package:responsive_ui/screens/widgets/download_button.dart';
import 'package:responsive_ui/screens/widgets/social_widget.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
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
