// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';

abstract class Routes {
  static const colorTilePageViewRoute = '/color-tile-page-view-route';
  static const colorDetailViewRoute = '/color-detail-view-route';
  static const all = {
    colorTilePageViewRoute,
    colorDetailViewRoute,
  };
}

class StackedNavigatorRoute extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<StackedNavigatorRoute>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.colorTilePageViewRoute:
        if (hasInvalidArgs<ColorTilePageViewArguments>(args)) {
          return misTypedArgsRoute<ColorTilePageViewArguments>(args);
        }
        final typedArgs =
            args as ColorTilePageViewArguments ?? ColorTilePageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              ColorTilePageView(key: typedArgs.key, choice: typedArgs.choice),
          settings: settings,
        );
      case Routes.colorDetailViewRoute:
        if (hasInvalidArgs<ColorDetailViewArguments>(args)) {
          return misTypedArgsRoute<ColorDetailViewArguments>(args);
        }
        final typedArgs =
            args as ColorDetailViewArguments ?? ColorDetailViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ColorDetailView(
              key: typedArgs.key,
              choice: typedArgs.choice,
              materialIndex: typedArgs.materialIndex),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ColorTilePageView arguments holder class
class ColorTilePageViewArguments {
  final Key key;
  final NavChoice choice;
  ColorTilePageViewArguments({this.key, this.choice});
}

//ColorDetailView arguments holder class
class ColorDetailViewArguments {
  final Key key;
  final NavChoice choice;
  final int materialIndex;
  ColorDetailViewArguments({this.key, this.choice, this.materialIndex});
}
