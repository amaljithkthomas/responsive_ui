import 'package:flutter/material.dart';

class CountContainer extends StatelessWidget {
  final Size size;
  final String count;
  final String text1;
  final String text2;
  const CountContainer({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.width * .05,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$text1\n$text2',
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
