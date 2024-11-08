import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
