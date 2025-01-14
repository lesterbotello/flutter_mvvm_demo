import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  String _content = '';
  String _labelText = '';

  String get content => _content;
  String get labelText => _labelText;

  void updateContent(String value) {
    _content = value;
    notifyListeners();
  }

  void submit() {
    _labelText = _content;
    notifyListeners();
  }
}