import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/profile_provider.dart';

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final educationList = Provider.of<ProfileProvider>(context).profileData.education;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: educationList.length,
            itemBuilder: (context, index) {
              final education = educationList[index];
              return Card(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        education.course,
                        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text("Institution: ${education.institution}",
                          style: GoogleFonts.poppins(fontSize: 16)),
                      Text("University/Board: ${education.university}",
                          style: GoogleFonts.poppins(fontSize: 16)),
                      Text("Year of Passing: ${education.year}",
                          style: GoogleFonts.poppins(fontSize: 16)),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}