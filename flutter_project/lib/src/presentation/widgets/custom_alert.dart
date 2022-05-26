import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/texts/app_texts.dart';

class CustomAlert extends StatelessWidget {
  /// O que fazer quando o botão de confirmar do alerta for pressionado?
  final void Function() handleConfirmationButtonPress;

  /// O que fazer quando o botão de rejeitar do alerta for pressionado?
  final void Function() handleRejectionButtonPress;

  const CustomAlert({
    Key? key,
    required this.handleConfirmationButtonPress,
    required this.handleRejectionButtonPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      actionsOverflowDirection: VerticalDirection.down,
      contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      content: Column(
        children: [
          const Text(AppTexts.alertContinueAction),
          const SizedBox(
            height: AppSpacing.medium,
          ),
          ElevatedButton(
            onPressed: handleConfirmationButtonPress,
            child: Text(
              AppTexts.confirm,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: AppColors.whiteBackground),
            ),
          ),
          const SizedBox(
            height: AppSpacing.medium,
          ),
          ElevatedButton(
            onPressed: handleRejectionButtonPress,
            child: Text(
              AppTexts.cancel,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: AppColors.whiteBackground),
            ),
          ),
        ],
      ),
    );
  }
}
