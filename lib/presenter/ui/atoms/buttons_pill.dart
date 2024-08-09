import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonsPill extends StatelessWidget {
  const ButtonsPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0.2,
                blurRadius: 2,
                offset: const Offset(0, 1), 
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 18),
              SvgPicture.asset(
                'icons/Icon-1.svg',
              ),
              const SizedBox(width: 18),
              SvgPicture.asset(
                'icons/Icon-3.svg',
              ),
              const SizedBox(width: 18),
              SvgPicture.asset(
                'icons/Icon-2.svg',
              ),
              const SizedBox(width: 18),
            ],
          ),
        ),
      ],
    );
  }
}
