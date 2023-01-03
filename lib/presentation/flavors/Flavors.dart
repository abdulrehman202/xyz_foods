import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:xyz_foods/domain/Sample.dart';
import 'package:xyz_foods/presentation/Components/FlavorsCard.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/strings_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class Flavors extends StatefulWidget {
  const Flavors({super.key});

  @override
  State<Flavors> createState() => _FlavorsState();
}

class _FlavorsState extends State<Flavors> {
  late List<Temp> flavorsList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flavorsList = [
      Temp('Zinger Burger', '180'),
      Temp('Zinger Jalapeno Burger', '200'),
      Temp('Zinger Tower Burger', '250'),
      Temp('Zinger Mighty Burger', '320'),
      Temp('Patty Burger', '150'),
      Temp('BBQ Burger', '150'),
      Temp('BBQ Burger', '150'),
      Temp('BBQ Burger', '150'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 200,
              color: ColorManager.primary,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://healthwire.pk/wp-content/uploads/2022/04/disadvantages-of-fast-food.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Card(
                    child: Text(
                      arguments['heading'],
                      style: const TextStyle(fontSize: AppSize.s28),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(AppMargin.m12),
                child: const Text(
                  'Choose from the flavors below',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: List.generate(flavorsList.length, (index) {
                return Expanded(
                  child: FlavorCard(
                      'https://healthwire.pk/wp-content/uploads/2022/04/disadvantages-of-fast-food.jpg',
                      flavorsList[index].url,
                      flavorsList[index].category),
                );
              }),
            ),
          ),
        ],
      )),
    );
  }
}
