import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xyz_foods/presentation/Components/ShopBanner.dart';
import 'package:xyz_foods/presentation/Components/menuCategoryCard.dart';
import 'package:xyz_foods/presentation/resources/assets_manager.dart';

import '../resources/strings_manager.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ShopBanner(),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(children: const [
                  MenuCategoryCard(AppStrings.burgerLink, AppStrings.burger),
                  MenuCategoryCard(
                      AppStrings.shawarmaLink, AppStrings.shawarma),
                ]),
                Row(children: const [
                  MenuCategoryCard(
                      AppStrings.parathaRollLink, AppStrings.parathaRoll),
                  MenuCategoryCard(
                      AppStrings.spinRollLink, AppStrings.spinRoll),
                ]),
                Row(children: const [
                  MenuCategoryCard(AppStrings.friesLink, AppStrings.fries),
                  MenuCategoryCard(AppStrings.pastaLink, AppStrings.pasta),
                ]),
                Row(children: const [
                  MenuCategoryCard(AppStrings.pizzaLink, AppStrings.pizza),
                  MenuCategoryCard(AppStrings.iceBarLink, AppStrings.iceBar),
                ]),
                Row(children: const [
                  MenuCategoryCard(
                      AppStrings.teaSectionLink, AppStrings.teaSection),
                  MenuCategoryCard(AppStrings.coffeeLink, AppStrings.coffee),
                ]),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
