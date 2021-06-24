import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_provider/provider/products.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  ProductDetailScreen({this.title});
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments.toString();
    // final loadedProduct= Provider.of<Products>(context).item.firstWhere((element) => element.id==productID);
     final loadedProduct= Provider.of<Products>(context,listen: false).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProduct.title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
