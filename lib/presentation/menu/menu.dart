import 'package:flutter/material.dart';
import 'package:xyz_foods/domain/Sample.dart';
import 'package:xyz_foods/presentation/Components/menuCategoryCard.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

import '../resources/strings_manager.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late List<Temp> categoriesList, filteredList;

  late TextEditingController controller;
  late FocusNode focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
    focusNode = FocusNode();
    categoriesList = [
      Temp(AppStrings.burgerLink, AppStrings.burger),
      Temp(AppStrings.shawarmaLink, AppStrings.shawarma),
      Temp(AppStrings.parathaRollLink, AppStrings.parathaRoll),
      Temp(AppStrings.spinRollLink, AppStrings.spinRoll),
      Temp(AppStrings.friesLink, AppStrings.fries),
      Temp(AppStrings.pastaLink, AppStrings.pasta),
      Temp(AppStrings.pizzaLink, AppStrings.pizza),
      Temp(AppStrings.iceBarLink, AppStrings.iceBar),
      Temp(AppStrings.teaSectionLink, AppStrings.teaSection),
      Temp(AppStrings.coffeeLink, AppStrings.coffee),
    ];

    setState(() {
      filteredList = categoriesList;
    });
  }

  SearchBar() {
    return Container(
        margin: const EdgeInsets.all(AppMargin.m18),
        height: AppSize.s60,
        padding: const EdgeInsets.all(AppPadding.p14),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s16))),
        child: Center(
            child: EditableText(
          controller: controller,
          focusNode: focusNode,
          style: const TextStyle(color: Colors.black),
          backgroundCursorColor: Colors.black,
          cursorColor: Colors.black,
          autofocus: true,
          onChanged: (string) {
            Future.delayed(Duration.zero, () {
              controller.text = string;
              controller.selection =
                  TextSelection.collapsed(offset: controller.text.length);
              List<Temp> temp;

              temp = categoriesList
                  .where((c) =>
                      (c.category.toLowerCase().contains(string.toLowerCase())))
                  .toList();
              setState(() {
                filteredList = temp;
              });
            });
            focusNode.requestFocus();
          },
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.s200,
              child: Center(
                child: SearchBar(),
              ),
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
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: filteredList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: MenuCategoryCard(filteredList[index].url,
                                filteredList[index].category));
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
