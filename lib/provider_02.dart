import 'package:flutter/foundation.dart';

class TextProvider with ChangeNotifier {
  String _message = '';
  String get message => _message;

  void getMessage(msg) {
    _message = msg;
    notifyListeners();
  }
}

class TextProvider2 {
  TextProvider _message2;
  TextProvider2(this._message2);

  void getMessage2(input) {
    _message2.getMessage(input);
  }
}
