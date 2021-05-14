import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/products.dart';
import 'package:online_shopping_app/Screens/details/componants/body.dart';
import '../../../constants.dart';
import 'package:online_shopping_app/Screens/details/componants/body.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Aristocratic Hand Bag",
              style: TextStyle(
                color: Colors.white,
              )),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: KDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "price\n",
                  ),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              SizedBox(
                width: KDefaultPadding,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
