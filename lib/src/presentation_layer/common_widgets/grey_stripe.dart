import 'package:flutter/material.dart';

class GreyStripe extends StatelessWidget {
  const GreyStripe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
        width: size.width, height: 16, color: Colors.grey);
  }
}
