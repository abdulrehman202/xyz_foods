import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class Flavors extends StatefulWidget {
  const Flavors({super.key});

  @override
  State<Flavors> createState() => _FlavorsState();
}

class _FlavorsState extends State<Flavors> {
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
        ],
      )),
    );
  }
}
