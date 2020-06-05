import 'package:flutter/material.dart';

import './../widgets/product_grid_item.dart';

class ProductsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop'
        ),
      ),
      body: ProductGridItem(),
    );
  }
}