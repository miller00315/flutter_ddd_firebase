import 'package:flutter/material.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';

class UpdateProductFooterButton extends StatelessWidget {
  final bool isSaving;
  final void Function() handleButtonPressed;

  const UpdateProductFooterButton({
    Key? key,
    required this.isSaving,
    required this.handleButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: isSaving
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: handleButtonPressed,
              child: Text(
                AppTexts.saveChanges,
                style: AppTextStyles.buttonTextWhite(context),
              ),
            ),
    );
  }
}
