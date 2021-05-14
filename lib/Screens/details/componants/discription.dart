import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/products.dart';
import 'package:online_shopping_app/Screens/details/componants/body.dart';
import '../../../constants.dart';
import 'package:online_shopping_app/Screens/details/componants/body.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
