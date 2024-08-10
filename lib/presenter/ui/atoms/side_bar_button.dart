import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBarButton extends StatelessWidget {
  final String iconUrl;

  const SideBarButton({super.key, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
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
