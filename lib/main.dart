import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/consts/theme_data.dart';
import 'package:shop_app/pages/bottom_bar.dart';
import 'package:shop_app/provider/dark_theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async{
    themeChangeProvider.darkTheme = await themeChangeProvider.darkThemePreferences.getTheme();
  }
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_){
        return themeChangeProvider;
      })
    ],
    child: Consumer<DarkThemeProvider>(
      builder: (context, themeData, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: Styles.themeData(themeChangeProvider.darkTheme, context),
          home: BottomBarPage(),
        );
      }
    ));
  }
}