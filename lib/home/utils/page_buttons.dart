import 'package:app_market/home/home.dart';
import 'package:app_market/l10n/l10n.dart';
import 'package:app_market/utils/apprecio_theme.dart';
import 'package:flutter/material.dart';

List<PageButton Function(BuildContext)> pageButtons = [
  _registerButton,
  _comparatorButton,
  _inventoryButton,
  _walletButton,
  _profileButton,
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

PageButton _registerButton(BuildContext context) => PageButton(
      l10n: context.l10n.homePageButtonRegister,
      pageName: 'market',
      color: theme.colorScheme.primary,
    );

PageButton _inventoryButton(BuildContext context) => PageButton(
      l10n: context.l10n.homePageButtonInventory,
      pageName: 'inventory',
      color: theme.colorScheme.primary,
    );

PageButton _comparatorButton(BuildContext context) => PageButton(
      l10n: context.l10n.homePageButtonComparator,
      pageName: 'comparator',
      color: theme.colorScheme.primary,
    );
