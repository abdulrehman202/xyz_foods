import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xyz_foods/presentation/flavors/Flavors.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/routes_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class MenuCategoryCard extends StatefulWidget {
  final String path, text;
  const MenuCategoryCard(this.path, this.text, {super.key});

  @override
  State<MenuCategoryCard> createState() => _MenuCategoryCardState();
}

class _MenuCategoryCardState extends State<MenuCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.flavorRoute,
              arguments: {'heading': widget.text});
        },
        child: Card(
          elevation: 2,
          shadowColor: ColorManager.primaryOpacity70,
          child: Container(
            margin: const EdgeInsets.all(AppMargin.m2),
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Column(children: [
              Image.network(widget.path),
              Text(
                widget.text,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
