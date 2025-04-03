import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/profile_provider.dart';

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileProvider>(context).profileData;

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text("Email: ${profile.email}", style: GoogleFonts.poppins(fontSize: 18)),
          SizedBox(height: 8),
          Text("Mobile: ${profile.mobile}", style: GoogleFonts.poppins(fontSize: 18)),
          SizedBox(height: 8),
          Text("Address: B-184, Pandav Nagar, Akshardham, New Delhi-110092",
              style: GoogleFonts.poppins(fontSize: 18)),
        ],
      ),
    );
  }
}