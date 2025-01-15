import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainViewModel extends StateNotifier<String> {
  MainViewModel(super.state);

  void updateContent(String newContent) {
    state = newContent;
  }
  
  void submit() {
    // Dummy command, no need to execute anything
  }
}

final contentProvider = StateNotifierProvider<MainViewModel, String>((ref) {
  return MainViewModel('');
});