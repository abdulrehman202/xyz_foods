import 'package:flutter/material.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            color: ColorManager.primary,
          ),
          onPressed: decreaseQuantity,
        ),
        Text(
          '${quantity}',
          style: TextStyle(),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: ColorManager.primary,
          ),
          onPressed: increaseQuantity,
        ),
      ],
    );
  }

  void increaseQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  void decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity -= 1;
      }
    });
  }
}
