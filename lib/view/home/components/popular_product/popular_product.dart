import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test/model/product.dart';
import 'package:test/view/home/components/popular_product/popular_product_card.dart';

class PopularProduct extends StatelessWidget {
  final List<Product> popularProducts;
  const PopularProduct({super.key, required this.popularProducts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: popularProducts.length,
          itemBuilder: (context, index) =>
              PopularProductCard(product: popularProducts[index])),
    );
  }
}
