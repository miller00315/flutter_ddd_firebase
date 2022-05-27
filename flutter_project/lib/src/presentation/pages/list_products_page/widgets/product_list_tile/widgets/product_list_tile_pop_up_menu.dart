import 'package:flutter/material.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';
import 'package:flutter_project/config/texts/app_texts.dart';

class ProductListTilePopUpMenu extends StatelessWidget {
  final void Function() handleEditButtonTap;
  final void Function() handleDeleteButtonTap;

  const ProductListTilePopUpMenu({
    Key? key,
    required this.handleEditButtonTap,
    required this.handleDeleteButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(
        Icons.more_horiz,
        size: IconSize.small,
      ),
      itemBuilder: (_) => PopMenuOptions.values
          .map(
            (option) => PopupMenuItem(
              child: Text(option.value),
              value: option,
            ),
          )
          .toList(),
      onSelected: (PopMenuOptions result) {
        switch (result) {
          case PopMenuOptions.edit:
            handleEditButtonTap();
            break;
          case PopMenuOptions.delete:
            handleDeleteButtonTap();
            break;
        }
      },
    );
  }
}

enum PopMenuOptions { edit, delete }

extension PopUpMenuX on PopMenuOptions {
  String get value {
    switch (this) {
      case PopMenuOptions.edit:
        return AppTexts.edit;
      case PopMenuOptions.delete:
        return AppTexts.delete;
    }
  }
}
