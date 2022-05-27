import 'package:flutter/material.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';

class CustomAlert extends StatelessWidget {
  /// O que fazer quando o botão de confirmar do alerta for pressionado?
  final void Function() handleConfirmationButtonPress;

  /// O que fazer quando o botão de rejeitar do alerta for pressionado?
  final void Function()? handleRejectionButtonPress;

  final String message;

  final String? confirmButtonText;

  const CustomAlert({
    Key? key,
    required this.handleConfirmationButtonPress,
    this.handleRejectionButtonPress,
    required this.message,
    this.confirmButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      actionsOverflowDirection: VerticalDirection.down,
      contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: handleConfirmationButtonPress,
                child: Text(
                  confirmButtonText ?? AppTexts.confirm,
                  style: AppTextStyles.buttonTextWhite(context),
                ),
              ),
              if (handleRejectionButtonPress != null)
                ElevatedButton(
                  onPressed: handleRejectionButtonPress,
                  child: Text(
                    AppTexts.cancel,
                    style: AppTextStyles.buttonTextWhite(context),
                  ),
                ),
            ],
          ),
        ),
      ],
      content: Column(
        children: [
          Text(message),
          const SizedBox(
            height: AppSpacing.medium,
          ),
        ],
      ),
    );
  }
}
