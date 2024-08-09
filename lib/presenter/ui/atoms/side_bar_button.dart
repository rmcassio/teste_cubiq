import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class SideBarButton extends StatefulWidget {
  final String iconUrl;

  const SideBarButton({super.key, required this.iconUrl});

  @override
  State<SideBarButton> createState() => _SideBarButtonState();
}

class _SideBarButtonState extends State<SideBarButton> {
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
                    : Colors.white,
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
