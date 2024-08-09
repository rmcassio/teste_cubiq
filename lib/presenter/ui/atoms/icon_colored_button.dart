import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconColoredButton extends StatefulWidget {
  final String iconUrl;
  final Color backgroundColor;

  const IconColoredButton({super.key, required this.iconUrl, required this.backgroundColor});

  @override
  State<IconColoredButton> createState() => _IconColoredButtonState();
}

class _IconColoredButtonState extends State<IconColoredButton> {
  bool isSelected = false;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: isHovered
                ? Colors.grey[200]
                : isSelected
                    ? Colors.grey[300]
                    : widget.backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: SvgPicture.asset(
              fit: BoxFit.cover,
              widget.iconUrl,
            ),
          ),
        ),
      ),
    );
  }
}
