import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String price;
  final String pricePer;
  Price({super.key, required this.price, required this.pricePer});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: price, style: textTheme.headlineLarge),
            TextSpan(text: ' ', style: textTheme.headlineLarge),
            TextSpan(text: pricePer, style: textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}
