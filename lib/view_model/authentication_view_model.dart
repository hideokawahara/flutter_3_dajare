import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_3_dajare/model/my_data.dart';
import 'package:flutter_3_dajare/repository/auth_repository.dart';

class AuthenticationViewModel extends ChangeNotifier {
  final auth = AuthRepositoryImpl();
  MyData? _myData;
  MyData? get myData {
    return _myData;
  }

  bool _isLogin = false;
  bool get isLogin {
    return _isLogin;
  }

  Future<bool> fetchMyData() async {
    MyData? setMyData = await auth.getMyData();
    if (setMyData != null) {
      _myData = setMyData;
      _isLogin = true;
      return true;
    } else {
      return false;
    }
  }

  void addPhoto(File file) {
    if (_myData != null) {
      _myData!.photoList.add(file.path);
      notifyListeners();
    } else {
      return;
    }
  }
}
