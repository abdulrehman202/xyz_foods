import 'package:flutter/material.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class FlavorCard extends StatefulWidget {
  final String flavor, price;
  const FlavorCard(this.flavor, this.price, {super.key});

  @override
  State<FlavorCard> createState() => _FlavorCardState();
}

class _FlavorCardState extends State<FlavorCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 2,
        shadowColor: ColorManager.primaryOpacity70,
        child: Container(
          margin: const EdgeInsets.all(AppMargin.m12),
          padding: const EdgeInsets.all(AppPadding.p8),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: constraints.maxHeight * 0.6,
                      width: constraints.maxWidth,
                      child: Image.network(
                        'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.fill,
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Expanded(
                          child: Text(
                            widget.flavor,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Rs. ${widget.price}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ]);
          }),
        ),
      ),
    );
  }
}
