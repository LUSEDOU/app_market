import 'dart:io';

import 'package:app_market/app/utils/routes.dart';
import 'package:app_market/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Route<dynamic> _pageRoute({Widget page = const HomePage()}) {
      return Platform.isIOS
          ? CupertinoPageRoute(
              settings: settings,
              builder: (context) => page,
            )
          : MaterialPageRoute(
              settings: settings,
              builder: (context) => page,
            );
    }

    switch (settings.name) {
      case AppRoutes.about:
        return _pageRoute();
      case AppRoutes.contact:
        return _pageRoute();
      case AppRoutes.forgotPassword:
        return _pageRoute();
      case AppRoutes.help:
        return _pageRoute();
      case AppRoutes.home:
        return _pageRoute();
      case AppRoutes.init:
        return _pageRoute();
      case AppRoutes.login:
        return _pageRoute();
      case AppRoutes.notFound:
        return _pageRoute();
      case AppRoutes.privacy:
        return _pageRoute();
      case AppRoutes.profile:
        return _pageRoute();
      case AppRoutes.register:
        return _pageRoute();
      case AppRoutes.resetPassword:
        return _pageRoute();
      case AppRoutes.settings:
        return _pageRoute();
      case AppRoutes.terms:
        return _pageRoute();
      default:
        return _pageRoute();
    }
  }
}
