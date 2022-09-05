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
      case AppRoute.about:
        return _pageRoute();
      case AppRoute.contact:
        return _pageRoute();
      case AppRoute.forgotPassword:
        return _pageRoute();
      case AppRoute.help:
        return _pageRoute();
      case AppRoute.home:
        return _pageRoute();
      case AppRoute.init:
        return _pageRoute();
      case AppRoute.login:
        return _pageRoute();
      case AppRoute.notFound:
        return _pageRoute();
      case AppRoute.privacy:
        return _pageRoute();
      case AppRoute.profile:
        return _pageRoute();
      case AppRoute.register:
        return _pageRoute();
      case AppRoute.resetPassword:
        return _pageRoute();
      case AppRoute.settings:
        return _pageRoute();
      case AppRoute.terms:
        return _pageRoute();
      default:
        return _pageRoute();
    }
  }

  static Future<void> push<T>(Routes route, [T? arguments]) async =>
      state.pushNamed(AppRoute.of(route)!, arguments: arguments);

  static Future<void> pushReplacement<T>(Routes route, [T? arguments]) async =>
      state.pushReplacementNamed(AppRoute.of(route)!, arguments: arguments);

  static Future<void> pushAndRemoveUntil<T>(
    Routes route, [
    T? arguments,
  ]) async =>
      state.pushNamedAndRemoveUntil(
        AppRoute.of(route)!,
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
