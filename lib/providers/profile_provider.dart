import 'package:flutter/material.dart';

import '../models/profile_data.dart';

class ProfileProvider with ChangeNotifier {
  final ProfileData _profileData = ProfileData();
  bool _isLoading = true;

  ProfileData get profileData => _profileData;
  bool get isLoading => _isLoading;

  ProfileProvider() {
    _loadData();
  }

  Future<void> _loadData() async {
    await _profileData.loadProjects();
    _isLoading = false;
    notifyListeners();
  }
}


// import 'package:flutter/material.dart';
// import '../models/profile_data.dart';
//
// class ProfileProvider with ChangeNotifier {
//   final ProfileData _profileData = ProfileData();
//
//   ProfileData get profileData => _profileData;
// }