import 'package:flutter/material.dart';
import 'package:xyz_foods/presentation/Components/Counter.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class FoodQuantityDialog extends StatefulWidget {
  late String imgUrl, name, price;
  FoodQuantityDialog(this.imgUrl, this.name, this.price, {super.key});

  @override
  State<FoodQuantityDialog> createState() => _FoodQuantityDialogState();
}

class _FoodQuantityDialogState extends State<FoodQuantityDialog> {
  @override
  Widget build(BuildContext context) {
    var simpleIntInput = 0;
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(AppPadding.p12),
      title: Text('Please select the quantity'),
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: AppMargin.m12),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s40))),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.network(
              widget.imgUrl,
              fit: BoxFit.fill,
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                widget.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Rs. ${widget.price}',
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text('Quantity: '), CounterWidget()]),
            ],
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.primary,
            ),
            onPressed: () {},
            child: Text('Add to Cart'))
      ],
    );
  }
}
