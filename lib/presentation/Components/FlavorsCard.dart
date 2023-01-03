import 'package:flutter/material.dart';
import 'package:xyz_foods/presentation/Components/FoodQuantityDialog.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class FlavorCard extends StatefulWidget {
  final String img, flavor, price;
  const FlavorCard(this.img, this.flavor, this.price, {super.key});

  @override
  State<FlavorCard> createState() => _FlavorCardState();
}

class _FlavorCardState extends State<FlavorCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return FoodQuantityDialog(
                  widget.img, widget.flavor, widget.price);
            });
      },
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
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            widget.flavor,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rs. ${widget.price}',
                          ),
                        ],
                      ),
                    ),
                  ),
                ]);
          }),
        ),
      ),
    );
  }
}
