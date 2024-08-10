import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class TextWithBorderButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: AppColors.backgroundSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: isSelected ? BorderSide(color: AppColors.selectedButtonColor, width: 2) : BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            Text(label),
            if (qtdChats > 0) const SizedBox(width: 8.0),
            if (qtdChats > 0)
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.backgroundColor,
                  border: Border.all(color: AppColors.borderColor, width: 0.5),
                ),
                child: Center(child: Text(qtdChats.toString(), style: AppTextStyles.messageTitleStyle)),
              ),
          ],
        ),
      ),
    );
  }
}
