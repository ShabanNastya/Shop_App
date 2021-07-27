import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/consts/colors.dart';
import 'package:shop_app/pages/widgets/cart_empty.dart';
import 'package:shop_app/pages/widgets/cart_full.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return !products.isEmpty
        ? Scaffold(body: CartEmptyPage())
        : Scaffold(
            bottomSheet: checkoutSection(context),
            appBar: AppBar(
              title: Text('Cart Items Count'),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.delete_outline), onPressed: () {})
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60.0),
              child: ListView.builder(itemCount: 5,itemBuilder: (BuildContext context, int index){
                return CartFullPage();
              }),
            ),
          );
  }

  Widget checkoutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.grey, width: 0.5),
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(colors: [
                    ColorsConsts.gradiendFStart,
                    ColorsConsts.gradiendFEnd
                  ]),
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('checkout',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).textSelectionColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0)),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text('Total',
                style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0)),
            Text('US\$179.0',
                //textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
