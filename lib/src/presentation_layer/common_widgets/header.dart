import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(text, style: textTheme.displayMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.w500)));
  }
}
