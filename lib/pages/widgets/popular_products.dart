import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            onTap: () {},
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(Icons.star_border, color: Colors.grey)),
                    Positioned(
                        right: 10,
                        top: 7,
                        child: Icon(Icons.star_border, color: Colors.white)),
                    Positioned(
                        right: 12,
                        bottom: 25,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Theme.of(context).backgroundColor,
                          child: Text('\$12.2',
                              style: TextStyle(
                                  color: Theme.of(context).textSelectionColor)),
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Title',
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Description',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey)),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(30.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.shopping_cart,
                                    size: 25, color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
