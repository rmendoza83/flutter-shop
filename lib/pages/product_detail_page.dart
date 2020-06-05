import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './../providers/products.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = './product-detail';

  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context).settings.arguments as String;
    final productDetail = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productDetail.title,
        ),
      ),
      //body: ``,
    );
  }
}