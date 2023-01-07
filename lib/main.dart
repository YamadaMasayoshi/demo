import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'View/main/main_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OOMIYA',
        theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            scaffoldBackgroundColor:Colors.white,
            bottomAppBarColor:Colors.white
        ),
        // home: const MainView(title: 'おおみや'),
        initialRoute: '/main_view',
        // （2） ページ名とウィジェットの関係
        routes: {
          '/main_view' : (context) => const MainView(title: 'おおみや'),//メイン画面
        }
    );
  }
}
