import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_provider/provider/products.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.item;

    return GridView.builder(
        padding: EdgeInsets.all(2),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 10),
        itemBuilder: (_, i) =>
          // ChangeNotifierProvider(
          //     create: (c) => products[i],
          ChangeNotifierProvider.value(
            value:products[i] ,
              child: ProductItem(
                // id: products[i].id,
                // title: products[i].title,
                // imageUrl: products[i].imageUrl,
              ))
        

        // itemBuilder: (_, i) {
        //   return ProductItem(
        //     id: products[i].id,
        //     title: products[i].title,
        //     imageUrl: products[i].imageUrl,
        //   );
        // }

        );
  }
}
