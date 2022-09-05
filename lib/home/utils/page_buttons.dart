import 'package:app_market/home/home.dart';
import 'package:app_market/l10n/l10n.dart';
import 'package:flutter/material.dart';

List<PageButton Function(AppLocalizations, ColorScheme)> pageButtons = [
  _registerButton,
  _comparatorButton,
  _inventoryButton,
  _walletButton,
  _profileButton,
];

PageButton _registerButton(AppLocalizations l10n, ColorScheme scheme) =>
    PageButton(
      l10n: l10n.homePageButtonRegister,
      pageName: 'market',
      color: scheme.primary,
    );

PageButton _comparatorButton(AppLocalizations l10n, ColorScheme scheme) =>
    PageButton(
      l10n: l10n.homePageButtonComparator,
      pageName: 'comparator',
      color: scheme.primary,
    );

PageButton _inventoryButton(AppLocalizations l10n, ColorScheme scheme) =>
    PageButton(
      l10n: l10n.homePageButtonInventory,
      pageName: 'inventory',
      color: scheme.primary,
    );

PageButton _walletButton(AppLocalizations l10n, ColorScheme scheme) =>
    PageButton(
      l10n: l10n.homePageButtonWallet,
      pageName: 'wallet',
      color: scheme.secondary,
    );

PageButton _profileButton(AppLocalizations l10n, ColorScheme scheme) =>
    PageButton(
      l10n: l10n.homePageButtonProfile,
      pageName: 'login',
      color: scheme.onPrimary,
    );
