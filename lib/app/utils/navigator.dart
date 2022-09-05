import 'dart:io';

import 'package:app_market/app/utils/routes.dart';
import 'package:app_market/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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

  static Future<void> push<T>(Routes route, [T? arguments]) async =>
      state.pushNamed(AppRoutes.of(route)!, arguments: arguments);

  static Future<void> pushReplacement<T>(Routes route, [T? arguments]) async =>
      state.pushReplacementNamed(AppRoutes.of(route)!, arguments: arguments);

  static Future<void> pushAndRemoveUntil<T>(
    Routes route, [
    T? arguments,
  ]) async =>
      state.pushNamedAndRemoveUntil(
        AppRoutes.of(route)!,
        (route) => false,
        arguments: arguments,
      );

  static Future<void> pop<T>([T? result]) async => state.pop(result);

  static Future<void> popUntil<T>(
    RoutePredicate predicate, [
    T? result,
  ]) async =>
      state.popUntil(predicate);

  static Future<void> pushNamed<T>(String route, [T? arguments]) async =>
      state.pushNamed(route, arguments: arguments);

  static Future<void> pushReplacementNamed<T>(
    String route, [
    T? arguments,
  ]) async =>
      state.pushReplacementNamed(route, arguments: arguments);

  static Future<void> pushNamedAndRemoveUntil<T>(
    String route,
    RoutePredicate predicate, [
    T? arguments,
  ]) async =>
      state.pushNamedAndRemoveUntil(route, predicate, arguments: arguments);

  static NavigatorState get state => navigatorKey.currentState!;
}
