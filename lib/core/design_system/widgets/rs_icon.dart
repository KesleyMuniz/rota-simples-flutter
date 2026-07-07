import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Carrega um ícone SVG de `assets/icons/<name>.svg` e o tinge com [color].
///
/// Os SVGs usam `currentColor`, então a cor é aplicada via colorFilter —
/// o mesmo ícone serve para qualquer contexto (top bar, alerta, badge…).
class RSIcon extends StatelessWidget {
  const RSIcon(this.name, {super.key, this.size = 24, this.width, this.height, this.color});

  final String name;
  final double size;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      width: width ?? size,
      height: height ?? size,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
