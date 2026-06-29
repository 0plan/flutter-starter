import 'package:flutter_zustand/flutter_zustand.dart';

class BottomTabStore extends Store<int> {
  BottomTabStore() : super(0);

  void setIndex(int index) {
    set(index);
  }
}

BottomTabStore useBottomTabStore() => create(() => BottomTabStore());
