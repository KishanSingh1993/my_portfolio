import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/profile_provider.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileProvider>(context).profileData;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Profile",
          //   style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: 16),
          Text("Name: ${profile.name}", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text("Email: ${profile.email}", style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text("Mobile: ${profile.mobile}", style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text("Summary:", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(profile.summary, style: GoogleFonts.poppins(fontSize: 16)),
          SizedBox(height: 16),
          Text("Skills:", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: profile.skills.map((skill) => Chip(label: Text(skill))).toList(),
          ),
        ],
      ),
    );
  }
}