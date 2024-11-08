import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  final List<String> featuresList;
  const Features({super.key, required this.featuresList});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.displayMedium!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(runSpacing: 4, children: [
        ...List.generate(
            featuresList.length,
            (index) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        child: Text(featuresList[index],
                            style: textTheme.copyWith(
                                color: Colors.black54)),
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                ))
      ]),
    );
  }
}
