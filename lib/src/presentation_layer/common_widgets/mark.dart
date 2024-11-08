import 'package:flutter/material.dart';

class Mark extends StatelessWidget {
  const Mark(
      {super.key, required this.rating, required this.ratingName});
  final String rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.displayMedium;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.amberAccent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            const Icon(Icons.star, color: Colors.orange),
            const SizedBox(width: 3),
            Text(rating, style: textTheme),
            const SizedBox(width: 3),
            Text(ratingName, style: textTheme)
          ]),
        ),
      ),
    );
  }
}
