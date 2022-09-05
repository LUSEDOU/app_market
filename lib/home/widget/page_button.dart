import 'package:app_market/app/app.dart';
import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  const PageButton({
    super.key,
    required this.l10n,
    required this.pageName,
    this.differentRoute = false,
    this.route,
    required this.color,
    this.gradient = false,
    this.gradientColor,
  })  : assert(
          !differentRoute && route == null,
          "Route can't be null when differentRoute is true",
        ),
        assert(
          !gradient && gradientColor == null,
          "Gradient color can't be null when gradient is true",
        );

  final String pageName;
  final String l10n;
  final bool differentRoute;
  final AppRoute? route;
  final Color color;
  final Color? gradientColor;
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        gradient: gradient
            ? LinearGradient(
                colors: [
                  color,
                  gradientColor!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: Center(
        child: Text(l10n.toUpperCase()),
      ),
    );
  }
}
