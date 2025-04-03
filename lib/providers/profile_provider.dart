import 'package:flutter/material.dart';
import '../models/profile_data.dart';

class ProfileProvider with ChangeNotifier {
  final ProfileData _profileData = ProfileData();

  ProfileData get profileData => _profileData;
}