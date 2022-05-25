import 'package:flutter/material.dart';

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
          const Text('Vocè deseja continuar esta ação'),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: handleConfirmationButtonPress,
            child: const Text('Confirmar'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: handleRejectionButtonPress,
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }
}
