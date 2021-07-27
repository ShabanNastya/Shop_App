import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/pages/widgets/feeds_products.dart';

class FeedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => FeedsProductsPage(),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4 : 5),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 6.0,
    ));
  }
}
