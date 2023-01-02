import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xyz_foods/presentation/Components/ShopBanner.dart';
import 'package:xyz_foods/presentation/Components/menuCategoryCard.dart';
import 'package:xyz_foods/presentation/resources/assets_manager.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

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
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s200,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s60),
                        topRight: Radius.circular(AppSize.s60))),
                padding: const EdgeInsets.all(AppPadding.p20),
                child: SingleChildScrollView(
                    child: Column(children: const [
                  MenuCategoryCard(AppStrings.burgerLink, AppStrings.burger),
                  MenuCategoryCard(
                      AppStrings.shawarmaLink, AppStrings.shawarma),
                  MenuCategoryCard(
                      AppStrings.parathaRollLink, AppStrings.parathaRoll),
                  MenuCategoryCard(
                      AppStrings.spinRollLink, AppStrings.spinRoll),
                  MenuCategoryCard(AppStrings.friesLink, AppStrings.fries),
                  MenuCategoryCard(AppStrings.pastaLink, AppStrings.pasta),
                  MenuCategoryCard(AppStrings.pizzaLink, AppStrings.pizza),
                  MenuCategoryCard(AppStrings.iceBarLink, AppStrings.iceBar),
                  MenuCategoryCard(
                      AppStrings.teaSectionLink, AppStrings.teaSection),
                  MenuCategoryCard(AppStrings.coffeeLink, AppStrings.coffee),
                ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
