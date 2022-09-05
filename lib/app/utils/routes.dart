enum Routes {
  about,
  contact,
  forgotPassword,
  help,
  home,
  login,
  notFound,
  privacy,
  profile,
  register,
  resetPassword,
  settings,
  terms,
}

class AppRoute {
  static const String about = '/about';
  static const String contact = '/contact';
  static const String forgotPassword = '/forgot-password';
  static const String help = '/help';
  static const String home = '/home';
  static const String init = '/';
  static const String login = '/login';
  static const String notFound = '/not-found';
  static const String privacy = '/privacy';
  static const String profile = '/profile';
  static const String register = '/register';
  static const String resetPassword = '/reset-password';
  static const String settings = '/settings';
  static const String terms = '/terms';

  static const Map<Routes, String> routes = {
    Routes.about: AppRoute.about,
    Routes.contact: AppRoute.contact,
    Routes.forgotPassword: AppRoute.forgotPassword,
    Routes.help: AppRoute.help,
    Routes.home: AppRoute.home,
    Routes.login: AppRoute.login,
    Routes.notFound: AppRoute.notFound,
    Routes.privacy: AppRoute.privacy,
    Routes.profile: AppRoute.profile,
    Routes.register: AppRoute.register,
    Routes.resetPassword: AppRoute.resetPassword,
    Routes.settings: AppRoute.settings,
    Routes.terms: AppRoute.terms,
  };

  static String? of(Routes route) => routes[route];
}
