import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/src/presentation_layer/common_widgets/action_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/back_icon_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/header.dart';

class FinalPage extends StatelessWidget {
  final String hotelName;
  const FinalPage({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(
            onTap: () =>
                context.go('/reservation', extra: hotelName)),
        title: const Text('Заказ оплачен'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44)),
              child: Image.asset('assets/images/party.png')),
          const SizedBox(height: 32),
          const Header(text: 'Ваш заказ принят в работу'),
          const SizedBox(height: 32),
          _AboutOrderConfirmation(
              'Подтверждение заказа №${Random().nextInt(1000)} может\nзанять некоторое время (от 1 часа до суток).\nКак только мы получим ответ от\nтуроператора, вам на почту придёт\nуведомление.'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        elevation: 0,
        child: Column(children: [
          const SizedBox(height: 12),
          ActionButton(
            'Супер!',
            onTap: () => context.go('/'),
          ),
        ]),
      ),
    );
  }
}

class _AboutOrderConfirmation extends StatelessWidget {
  final String text;
  const _AboutOrderConfirmation(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.grey),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
