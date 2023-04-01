
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../Provider/main_provider.dart';

///メイン画面クラス
class MainView extends ConsumerWidget {
  const MainView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///選択している項目の状態を監視
    // final int selectIndex = ref.watch(navigationBarProvider).selectIndex;
    // ///選択している項目の状態を変化させるための変数
    // final navigationProvider = ref.read(navigationBarProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(child: const Text('ab'),)
      // bodyPage(context, selectIndex),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedFontSize: 12,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム', tooltip: '',),
      //     BottomNavigationBarItem(icon: Icon(Icons.flatware), label: 'メニュー', tooltip: '',),
      //     BottomNavigationBarItem(icon: Icon(Icons.border_color ), label: '設定', tooltip: '',),
      //   ],
      //   elevation: 0,
      //   currentIndex: selectIndex,//選択している画面
      //   selectedItemColor: Colors.lightGreen,//選択している色
      //   onTap:(index) => navigationProvider.changePage(index),//画面切り替え
      // ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ///body
  Widget bodyPage(BuildContext context,int selectIndex){

    // メニューページ
    // if(selectIndex == 1) {
    //   return MenuView();
    // }
    // //設定ページ
    // if(selectIndex == 2) {
    //   return const SettingView();
    // }
    //ホームページ
    return Center(
      child: Container(),
    );

  }
}