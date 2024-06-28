import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/text_widget.dart';

class MyServiceWidget extends StatefulWidget {
  final Size size;
  const MyServiceWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<MyServiceWidget> createState() => _MyServiceWidgetState();
}

class _MyServiceWidgetState extends State<MyServiceWidget> {
  List<bool> _isHovered = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered[index] = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered[index] = false;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(microseconds: 300),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.all(15),
              margin:
                  EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
              height:
                  widget.size.width < 600 ? null : widget.size.height * 0.18,
              width: widget.size.width,
              decoration: BoxDecoration(
                  color: _isHovered[index] ? null : Colors.transparent,
                  border: Border.all(
                    color: _isHovered[index]
                        ? AppColors.studio.withOpacity(.5)
                        : Colors.transparent,
                  ),
                  gradient: _isHovered[index]
                      ? const LinearGradient(colors: [
                          AppColors.studio,
                          AppColors.ebony,
                        ])
                      : null),
              child: widget.size.width < 600
                  ? Column(
                      children: [
                        TextWidget(
                          size: widget.size,
                          text: '${index + 1}',
                          color: Colors.white,
                          fontSize: 28,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextWidget(
                          size: widget.size,
                          text: 'Brand Design',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextWidget(
                          size: widget.size,
                          text:
                              'We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          size: widget.size,
                          text: '${index + 1}',
                          color: Colors.white,
                          fontSize: 28,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.04,
                        ),
                        TextWidget(
                          size: widget.size,
                          text: 'Brand Design',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.08,
                        ),
                        Flexible(
                          child: TextWidget(
                            size: widget.size,
                            text:
                                'We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        FaIcon(
                          _isHovered[index]
                              ? FontAwesomeIcons.arrowTrendUp
                              : FontAwesomeIcons.arrowTrendDown,
                          color: _isHovered[index]
                              ? Colors.white
                              : AppColors.studio,
                        )
                      ],
                    ),
            ),
          );
        });
  }
}
