import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'dart:math' as math;

class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<RotatingImageContainer> createState() => _RotatingImageContainerState();
}

class _RotatingImageContainerState extends State<RotatingImageContainer> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: AnimatedContainer(
        transform: Matrix4.rotationZ(_isHovered ? 0 : math.pi / 36),
        height: size.width * .24,
        width: size.width * .24,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/profile.jpg'),
          ),
          border: Border.all(
            color: AppColors.studio,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
