import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  final Function() onTap;
  const BackIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.chevron_left),
      onPressed: onTap,
    );
  }
}
