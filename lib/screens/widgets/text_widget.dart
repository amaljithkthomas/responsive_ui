import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.size,
    this.text,
    this.fontWeight,
    this.color,
    this.align,
    this.fontSize,
  });
  final String? text;
  final TextAlign? align;
  final Color? color;
  final double? fontSize;
  final Size size;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textAlign: size.width < 600 && align != null ? align : null,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: fontSize ?? size.width * 0.040,
          fontFamily: 'Poppins'),
    );
  }
}
