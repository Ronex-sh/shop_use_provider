import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shop_provider/provider/products.dart';

import 'package:shop_provider/widgets/product_grid.dart';

enum FilterOptions { Favorites, All }

class PdroductOverview extends StatefulWidget {
  @override
  _PdroductOverviewState createState() => _PdroductOverviewState();
}

class _PdroductOverviewState extends State<PdroductOverview> {
  bool _showOnlyFavories = false;
  @override
  Widget build(BuildContext context) {
    //  final productsContainer = Provider.of<Products>(context,listen: false);
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(
          "My Shop",
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          
          PopupMenuButton(
              onSelected: (FilterOptions s) {
                setState(() {
                   if (s == FilterOptions.Favorites) {
                  _showOnlyFavories = true;
                } else {
                  _showOnlyFavories = false;
                }
                });
               
              },
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Only Favorites'),
                      value: FilterOptions.Favorites,
                    ),
                    PopupMenuItem(
                      child: Text('Show All'),
                      value: FilterOptions.All,
                    ),
                  ])

          // PopupMenuButton(
          //     onSelected: (FilterOptions s) {
          //       if (s == FilterOptions.Favorites) {
          //          productsContainer.showfavoriteOnly();

          //       } else {
          //          productsContainer.showAll();
          //       }
          //     },
          //     itemBuilder: (_) => [
          //           PopupMenuItem(
          //             child: Text('Only Favorites'),
          //             value: FilterOptions.Favorites,
          //           ),
          //           PopupMenuItem(
          //             child: Text('Show All'),
          //             value: FilterOptions.All,
          //           ),
          //         ])
        ],
      ),
      body: ProductGrid(_showOnlyFavories),
    );
    return scaffold;
  }
}
