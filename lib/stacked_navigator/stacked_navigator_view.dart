import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/stacked_navigator/stacked_navigator_route.gr.dart';

class StackedNavigator extends StatelessWidget {
  
  final GlobalKey<NavigatorState> navigatorKey;
  final NavChoice choice;

  const StackedNavigator({this.navigatorKey, this.choice});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: Routes.colorTilePageViewRoute,
      onGenerateRoute: (settings) => StackedNavigatorRoute().onGenerateRoute(
          settings.copyWith(
            arguments: new ColorTilePageViewArguments(
              choice: this.choice)))
    );
  }
}
