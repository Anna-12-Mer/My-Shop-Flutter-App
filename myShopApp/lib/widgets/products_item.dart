import 'package:flutter/material.dart';
import 'package:myShopApp/screens/products_details_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;

  ProductItem(this.id, this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: GridTile(
          child: Image.network(
            imgUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
