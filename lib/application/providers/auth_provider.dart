import 'package:flutter/foundation.dart';
import 'package:flutter_app/core/enums/auth_current_enum.dart';


class AuthProvider extends ChangeNotifier {
  CURRENT_PAGE _currentPage;

  CURRENT_PAGE get currentPage => _currentPage;

  void updateCurrentPage(CURRENT_PAGE page) {
    _currentPage = page;
    notifyListeners();
  }
}
