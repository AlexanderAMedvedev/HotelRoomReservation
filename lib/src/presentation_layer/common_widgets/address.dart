import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  final String hotelAddress;
  const Address({super.key, required this.hotelAddress});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        hotelAddress,
        style: textTheme.titleMedium,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}
