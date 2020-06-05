import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';

import './../providers/products.dart';

class ProductGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context);
    final productsData = productsProvider.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        id: productsData[i].id,
        title: productsData[i].title,
        imageUrl: productsData[i].imageUrl,
      ),
      itemCount: productsData.length,
      padding: const EdgeInsets.all(10.0),
    );
  }
}