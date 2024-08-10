import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconColoredButton extends StatelessWidget {
  final String iconUrl;
  final Color backgroundColor;

  const IconColoredButton({super.key, required this.iconUrl, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: SvgPicture.asset(
            fit: BoxFit.cover,
            iconUrl,
          ),
        ),
      ),
    );
  }
}
