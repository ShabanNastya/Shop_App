import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/dark_theme_provider.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Widget userListTile(
      String title, String subtitle, int index, BuildContext context) {
    return Material(
      //color: Color(0xFFF196FF),
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(_userTileIcons[index]),
          onTap: () {},
        ),
      ),
    );
  }

  Widget userTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }

  List<IconData> _userTileIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: userTitle('User Bag'),
          ),
          const Divider(
            thickness: 3,
            indent: 8,
            endIndent: 50,
            color: Colors.purple,
          ),
          Material(
            child: InkWell(
              splashColor: Theme.of(context).splashColor,
              child: ListTile(
                title: Text('Wishlist'),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.assignment_turned_in_outlined),
                onTap: () {},
              ),
            ),
          ),
          Material(
            child: InkWell(
              splashColor: Theme.of(context).splashColor,
              child: ListTile(
                title: Text('Cart'),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.shopping_cart),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: userTitle('User Information'),
          ),
          const Divider(
            thickness: 3,
            indent: 8,
            endIndent: 50,
            color: Colors.purple,
          ),
          userListTile('E-mail', 'sub-email', 0, context),
          userListTile('Phone number', '+375-(29)-111-11-11', 1, context),
          userListTile('Shipping address', 'sub-email', 2, context),
          userListTile('Date', 'sub-date', 3, context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: userTitle('User Settings'),
          ),
          const Divider(
            thickness: 3,
            indent: 8,
            endIndent: 50,
            color: Colors.purple,
          ),
          SwitchListTile(
            value: themeChange.darkTheme,
            onChanged: (value) {
              setState(() {
                themeChange.darkTheme = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
            title: Text('Dark Theme'),
          ),
          userListTile('Logout', '', 4, context),
        ],
      ),
    );
  }
}
