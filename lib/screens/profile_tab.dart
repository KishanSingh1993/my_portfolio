import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/profile_provider.dart';

class ProfileTab extends StatelessWidget {
  // Replace this with your actual Google Drive download link
  final String cvDownloadUrl = "https://drive.google.com/file/d/1HRiNBGcWyCo1-mYtHH_1awA274Yow94g/view?usp=sharing";

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileProvider>(context).profileData;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Profile",
              //   style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 16),
              Text("Name: ${profile.name}",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text("Email: ${profile.email}",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text("Mobile: ${profile.mobile}",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text("Summary:",
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(profile.summary, style: GoogleFonts.poppins(fontSize: 16)),
              SizedBox(height: 16),
              Text("Skills:",
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: profile.skills.map((skill) => Chip(label: Text(skill))).toList(),
              ),
              SizedBox(height: 80), // Add space to avoid overlap with the button
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: TextButton(
              onPressed: () => _launchURL(cvDownloadUrl),
              child: Text(
                "Download CV",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}







// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../providers/profile_provider.dart';
//
// class ProfileTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final profile = Provider.of<ProfileProvider>(context).profileData;
//
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Text(
//           //   "Profile",
//           //   style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
//           // ),
//           SizedBox(height: 16),
//           Text("Name: ${profile.name}", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
//           SizedBox(height: 8),
//           Text("Email: ${profile.email}", style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600)),
//           SizedBox(height: 8),
//           Text("Mobile: ${profile.mobile}", style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600)),
//           SizedBox(height: 8),
//           Text("Summary:", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
//           Text(profile.summary, style: GoogleFonts.poppins(fontSize: 16)),
//           SizedBox(height: 16),
//           Text("Skills:", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
//           Wrap(
//             spacing: 8.0,
//             runSpacing: 4.0,
//             children: profile.skills.map((skill) => Chip(label: Text(skill))).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }