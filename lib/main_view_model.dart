import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  String _content = '';
  String _displayText = '';

  String get content => _content;
  String get displayText => _displayText;

  void updateContent(String newContent) {
    _content = newContent;
    notifyListeners(); // Notify listeners about the content change
  }

  void submitContent() {
    _displayText = _content;
    notifyListeners(); // Notify listeners about the display text change
  }
}