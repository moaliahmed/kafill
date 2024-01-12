import 'package:flutter/material.dart';
import 'package:kafiil/core/string_manager.dart';
import 'package:kafiil/login/presentation/screans/login_view.dart';
import 'package:kafiil/login/presentation/screans/register_part_two_view.dart';

import '../home/presentation/screans/countries_view.dart';
import '../home/presentation/screans/services_view.dart';
import '../home/presentation/screans/who_amI_view.dart';
import '../login/presentation/screans/register_part_one_view.dart';

class Routes {
  static const String servicesRoute = '/services';
  static const String registerRoute = '/register';
  static const String registerPartTwoRoute = '/register2';
  static const String loginRoute = '/';
  static const String whoAmIRoute = '/whoAmI';
  static const String countriesRoute = '/countries';
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.servicesRoute:
        return MaterialPageRoute(
          builder: (_) => const ServicesView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case Routes.registerPartTwoRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterPartTwo(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.countriesRoute:
        return MaterialPageRoute(
          builder: (_) => const CountriesView(),
        );
      case Routes.whoAmIRoute:
        return MaterialPageRoute(
          builder: (_) => const WhoAmIView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppString.noRouteFound),
          ),
          body: const Center(child: Text(AppString.noRouteFound)),
        );
      },
    );
  }
}
