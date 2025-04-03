import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/profile_provider.dart';
import '../widgets/project_card.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);
    final projects = profileProvider.profileData.projects;
    final isLoading = profileProvider.isLoading;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) => ProjectCard(project: projects[index]),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../providers/profile_provider.dart';
// import '../widgets/project_card.dart';
//
// class ProjectsTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final projects = Provider.of<ProfileProvider>(context).profileData.projects;
//
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Projects",
//             style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 16),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: projects.length,
//             itemBuilder: (context, index) => ProjectCard(project: projects[index]),
//           ),
//         ],
//       ),
//     );
//   }
// }