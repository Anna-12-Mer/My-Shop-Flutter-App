import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

import '../models/products.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: new ProdutsGrid(),
    );
  }
}
