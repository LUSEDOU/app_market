enum Routes {
  home,
  login,
  register,
  forgotPassword,
  resetPassword,
  profile,
  settings,
  about,
  contact,
  help,
  terms,
  privacy,
  notFound,
}

class AppRoutes {
  static const String init = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';
  static const String terms = '/terms';
  static const String privacy = '/privacy';
  static const String notFound = '/not-found';

  static const Map<Routes, String> routes = {
    Routes.home: AppRoutes.home,
    Routes.login: AppRoutes.login,
    Routes.register: AppRoutes.register,
    Routes.forgotPassword: AppRoutes.forgotPassword,
    Routes.resetPassword: AppRoutes.resetPassword,
    Routes.profile: AppRoutes.profile,
    Routes.settings: AppRoutes.settings,
    Routes.about: AppRoutes.about,
    Routes.contact: AppRoutes.contact,
    Routes.help: AppRoutes.help,
    Routes.terms: AppRoutes.terms,
    Routes.privacy: AppRoutes.privacy,
    Routes.notFound: AppRoutes.notFound,
  };
}
