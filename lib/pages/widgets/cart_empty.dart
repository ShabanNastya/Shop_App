import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/consts/colors.dart';
import 'package:shop_app/provider/dark_theme_provider.dart';

class CartEmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              //fit: BoxFit.fill,
              image: AssetImage('assets/images/emptycart.png'),
            ),
          ),
        ),
        Text(
          'Your cart is empty',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionColor, fontSize: 24),
        ),
        SizedBox(height: 20.0),
        Text(
          'Looks like you didn\'t Add anything to your cart yet',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontSize: 20),
        ),
        SizedBox(height: 20.0),
        Container(
          width: MediaQuery.of(context).size.height * 0.5,
          height: MediaQuery.of(context).size.height * 0.05,
          child: ElevatedButton(
            child: Text('Shop now'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              onPrimary: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
