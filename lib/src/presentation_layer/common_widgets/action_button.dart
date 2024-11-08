import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const ActionButton(this.title, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue),
        child: GestureDetector(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style:
                  textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
