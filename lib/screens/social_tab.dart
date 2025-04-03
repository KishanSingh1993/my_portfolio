import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/profile_provider.dart';

class SocialTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileProvider>(context).profileData;

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Social Links",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LinkedIn: ",
                style: GoogleFonts.poppins(fontSize: 18),
              ),
              GestureDetector(
                onTap: () => _launchURL(profile.linkedIn),
                child: Text(
                  profile.linkedIn,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.blue, // Blue color for hyperlink
                    decoration: TextDecoration.underline, // Optional underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GitHub: ",
                style: GoogleFonts.poppins(fontSize: 18),
              ),
              GestureDetector(
                onTap: () => _launchURL(profile.github),
                child: Text(
                  profile.github,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.blue, // Blue color for hyperlink
                    decoration: TextDecoration.underline, // Optional underline
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}