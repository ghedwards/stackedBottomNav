import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_bar_view.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/home/home_view_model.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text(
              viewModel.availableChoices[viewModel.selectedIndex].navTitle()),
        ),
        bottomNavigationBar: BottomNavBarView(),
        body: SafeArea(
          child: ColorTilePageView(
            key: PageStorageKey(
                viewModel.availableChoices[viewModel.selectedIndex].navTitle()),
            choice: viewModel.availableChoices[viewModel.selectedIndex],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
