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

class AppRoutes {
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
    Routes.about: AppRoutes.about,
    Routes.contact: AppRoutes.contact,
    Routes.forgotPassword: AppRoutes.forgotPassword,
    Routes.help: AppRoutes.help,
    Routes.home: AppRoutes.home,
    Routes.login: AppRoutes.login,
    Routes.notFound: AppRoutes.notFound,
    Routes.privacy: AppRoutes.privacy,
    Routes.profile: AppRoutes.profile,
    Routes.register: AppRoutes.register,
    Routes.resetPassword: AppRoutes.resetPassword,
    Routes.settings: AppRoutes.settings,
    Routes.terms: AppRoutes.terms,
  };

  static String? of(Routes route) => routes[route];
}
