import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../design_system.dart';

class RSLogo extends StatelessWidget {
  const RSLogo({super.key, this.showWordmark = true});

  final bool showWordmark;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconHeight = screenWidth * 0.40;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/branding/logo.svg', height: iconHeight),
        if (showWordmark) ...[
          const SizedBox(height: RSSpacing.sm),
          RichText(
            text: TextSpan(
              style: RSType.screenTitle(),
              children: [
                const TextSpan(text: 'rota'),
                TextSpan(
                  text: 'simples',
                  style: RSType.screenTitle(color: RSColors.accent),
                ),
              ],
            ),
          ),
          const SizedBox(height: RSSpacing.xs),
          Text(
            'OTIMIZE SUAS ENTREGAS',
            style: RSType.label().copyWith(letterSpacing: 2),
          ),
        ],
      ],
    );
  }
}
