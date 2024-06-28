import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/text_widget.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => onEnter(true),
      onExit: (_) => onExit(false),
      child: Container(
        width: size.width * 0.10,
        height: size.width * 0.10,
        decoration: BoxDecoration(
            color: AppColors.ebony.withOpacity(0.8),
            borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(50),
              child: Image.asset('assets/images/project.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                //margin: const EdgeInsets.all(12),
                curve: Curves.linear,
                height: _isHovered ? size.height * 0.15 : 0,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.studio.withOpacity(.8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: TextWidget(
                              size: size,
                              text: 'Web Development',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: TextWidget(
                              size: size,
                              text: 'Click to visit',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onEnter(bool value) {
    setState(() {
      _isHovered = value;
    });
  }

  void onExit(bool value) {
    setState(() {
      _isHovered = value;
    });
  }
}
