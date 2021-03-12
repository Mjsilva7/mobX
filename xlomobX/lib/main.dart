import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlomobX/repositories/category_repository.dart';
import 'package:xlomobX/screens/base/base_screen.dart';
import 'package:xlomobX/screens/category/category_screen.dart';
import 'package:xlomobX/store/category_store.dart';
import 'package:xlomobX/store/page_store.dart';
import 'package:xlomobX/store/user_manager_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(UserManagerStore());
  GetIt.I.registerSingleton(CategoryStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'Xdwv37gztODEU5VKg6jyNA0xJh1cXBbK8JNwDdLw',
    'https://parseapi.back4app.com/',
    clientKey: 'XC7nWVOSK7niYMKR6Yy2q2ki3GCna5izJ1nnV65u',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(elevation: 0),
        cursorColor: Colors.orange,
      ),
      home: BaseScreen(),
    );
  }
}
