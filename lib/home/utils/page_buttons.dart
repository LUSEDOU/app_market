import 'package:app_market/home/home.dart';
import 'package:app_market/l10n/l10n.dart';
import 'package:app_market/utils/apprecio_theme.dart';
import 'package:flutter/material.dart';

List<PageButton Function(BuildContext)> pageButtons = [
  _profileButton,
  _walletButton,
];

PageButton _profileButton(BuildContext context) => PageButton(
      l10n: context.l10n.homePageButtonProfile,
      pageName: 'login',
      color: theme.colorScheme.primary,
    );

PageButton _walletButton(BuildContext context) => PageButton(
      l10n: context.l10n.homePageButtonWallet,
      pageName: 'wallet',
      color: theme.colorScheme.primary,
    );
