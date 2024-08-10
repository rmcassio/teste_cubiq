import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class SendButton extends StatefulWidget {
  final VoidCallback onPressed;
  const SendButton({super.key, required this.onPressed});

  @override
  State<SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: Container(
        height: 40,
        width: 158,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: !_isHovered ? AppColors.actionButtonColor : const Color(0xFF2E90FA),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.transparent)),
          onPressed: widget.onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enviar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 12), // Space between text and icon
              SvgPicture.asset(
                'icons/Icon-9.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
