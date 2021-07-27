import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart.dart';
import 'package:shop_app/pages/feeds.dart';
import 'package:shop_app/pages/home.dart';
import 'package:shop_app/pages/search.dart';
import 'package:shop_app/pages/user.dart';

class BottomBarPage extends StatefulWidget {
  static const routeName = '/BottomBarPage';

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  void initState(){
    _pages = [
      {
        'page': HomePage(),
        'title': 'Home Page'
      },
      {
        'page': FeedsPage(),
        'title': 'Feeds Page'
      },
      {
        'page': SearchPage(),
        'title': 'Search Page'
      },
      {
        'page': CartPage(),
        'title': 'Cart Page'
      },
      {
        'page': UserPage(),
        'title': 'User Page'
      },
      ];
  }
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(centerTitle: true, title: Text(_pages[_selectedIndex]['title']), backgroundColor: Colors.purpleAccent,),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.purpleAccent,
          selectedItemColor: Colors.purple,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                tooltip: 'home',
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed_sharp),
                tooltip: 'feeds',
                label: 'Feeds'),
            BottomNavigationBarItem(
                icon: Icon(null),
                tooltip: 'search',
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                tooltip: 'cart',
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                tooltip: 'user',
                label: 'User'),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        tooltip: 'Search',
        elevation: 5,
        child: (Icon(Icons.search)),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    );
  }
}
