import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///ナビゲーションバーの状態を管理するためのクラス
final navigationBarProvider = ChangeNotifierProvider((ref) {
  return NavigationBar();
});

///メイン画面のナビゲーションバーの変更のためのクラス
class NavigationBar extends ChangeNotifier {
  ///選択している項目(初期値はホームページなので0)
  int selectIndex = 0;

  ///画面切り替え
  void changePage(int index){
    selectIndex = index;
    ///画面に変更したことを通知する
    notifyListeners();
  }
}