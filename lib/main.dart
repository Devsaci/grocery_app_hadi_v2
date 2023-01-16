import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import 'const/theme_data.dart';
import 'inner_screens/feeds_screen.dart';
import 'inner_screens/on_sale_screen.dart';
import 'provider/dark_theme_provider.dart';
import 'screens/btm_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  Future<void> getCurrentAppThem() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppThem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // bool isDark = false;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        })
      ],
      child:
          Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: Styles.themeData(themeProvider.getDarkTheme, context),
          home: const BottomBarScreen(),
          routes: {
            OnSaleScreen.routeName: (ctx) => const OnSaleScreen(),
            FeedsScreen.routeName: (ctx) => const FeedsScreen(),
          },
        );
      }),
    );
  }
}
