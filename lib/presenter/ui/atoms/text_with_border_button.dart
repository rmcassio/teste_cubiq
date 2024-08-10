import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class TextWithBorderButton extends StatefulWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;
  final double qtdChats;
  const TextWithBorderButton({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onPressed,
    required this.qtdChats,
  });

  @override
  State<TextWithBorderButton> createState() => _TextWithBorderButtonState();
}

class _TextWithBorderButtonState extends State<TextWithBorderButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          overlayColor: Colors.transparent,
          backgroundColor: AppColors.backgroundSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: widget.isSelected ? BorderSide(color: AppColors.selectedButtonColor, width: 2) : BorderSide.none,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: [
              Text(
                widget.label,
                style: !_isHovered
                    ? TextStyle(
                        color: const Color(0xFF667085),
                        fontSize: AppTexts.smallTextSize,
                        fontWeight: FontWeight.w500,
                      )
                    : AppTextStyles.messageTitleStyle,
              ),
              if (widget.qtdChats > 0) const SizedBox(width: 8.0),
              if (widget.qtdChats > 0)
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.backgroundColor,
                    border: Border.all(color: AppColors.borderColor, width: 0.5),
                  ),
                  child: Center(
                    child: Text(
                      widget.qtdChats.toString(),
                      style: AppTextStyles.messageTitleStyle,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
