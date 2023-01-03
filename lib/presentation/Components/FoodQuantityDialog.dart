import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class FoodQuantityDialog extends StatelessWidget {
  late String imgUrl, name, price;
  FoodQuantityDialog(this.imgUrl, this.name, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(AppPadding.p12),
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.network(
              imgUrl,
              fit: BoxFit.fill,
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Rs. ${price}',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
