import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  final String name;
  Name({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        name,
        style: textTheme.displayLarge,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
