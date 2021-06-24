import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_provider/provider/product.dart';
import 'package:shop_provider/screens/product_details.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({this.id, this.title, this.imageUrl});
  // final String id;
  // final String title;
  // final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.scaleDown,
          ),
        ),
        header: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(product.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1),
        ),
        footer: GridTileBar(
          leading: Consumer<Product>(
            builder: (context,prod,child)=>
                       IconButton(
                color: Theme.of(context).accentColor,
                padding: EdgeInsets.all(0),
                icon: Icon(
                  
                  product.isFavorite?Icons.favorite:Icons.favorite_border,
                  size: 22,
                  color: Colors.yellow,
                ),
                onPressed: () {
                  product.favoriteChsngrState();
                }),
          ),
          backgroundColor: Colors.black54,
          title: SizedBox(
            width: 23,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shop_rounded,
              size: 22,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
