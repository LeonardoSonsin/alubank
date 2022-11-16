import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const BoxCard(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pontos totais:'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('3.000', style: Theme.of(context).textTheme.bodyLarge),
        ),
        const ContentDivision(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Objetivos:', style: TextStyle(fontSize: 20.0)),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.accountPoints[('pink')]),
            ),
            const Text('Entrega grátis: 15.000pts')
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.accountPoints[('blue')]),
            ),
            const Text('1 mês de streaming: 30.000pts')
          ],
        ),
      ],
    );
  }
}
