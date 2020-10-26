import 'package:flutter/material.dart';
import 'package:myShopApp/providers/products.dart';
import '../widgets/products_item.dart';
import 'package:provider/provider.dart';

class ProdutsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.itmes;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imgUrl,
      ),
      itemCount: products.length,
      padding: const EdgeInsets.all(10.0),
    );
  }
}
