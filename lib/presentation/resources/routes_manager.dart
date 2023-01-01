import 'package:flutter/material.dart';
import 'package:xyz_foods/presentation/menu/menu.dart';
import 'package:xyz_foods/presentation/flavors/Flavors.dart';
import 'package:xyz_foods/presentation/resources/strings_manager.dart';
import 'package:xyz_foods/presentation/splash/splash.dart';

class Routes {
  static const String splashRoute = '/';
  static const String menuRoute = '/menu';
  static const String flavorRoute = '/flavors';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
        break;

      case Routes.menuRoute:
        return MaterialPageRoute(builder: (_) => Menu());
        break;

      case Routes.flavorRoute:
        return MaterialPageRoute(
            builder: (_) => Flavors(), settings: routeSettings);
        break;

      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound),
              ),
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
