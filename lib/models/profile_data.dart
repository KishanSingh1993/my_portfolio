class ProfileData {
  final String name = "Kishan Singh";
  final String email = "kishang.90@gmail.com";
  final String mobile = "+919599367430";
  final String summary =
      "Experienced Senior Mobile Application Developer with 5 years of expertise in building robust and scalable Mobile applications. Proven track record of leading cross-functional teams, delivering high-quality code, and meeting project deadlines. Skilled in the full software development lifecycle, from requirements gathering to deployment and maintenance. Passionate about leveraging emerging technologies to create innovative solutions and drive business success."; // Add full summary from resume
  final String linkedIn = "https://www.linkedin.com/in/kishan-singh-b1582979";
  final String github = "https://github.com/KishanSingh1993";
  final List<String> skills = [
    "Flutter",
    "Dart",
    "Android",
    "iOS",
    "Java",
    "Kotlin",
    "Jetpack Compose",
    "Room DB",
    "SQLite",
    "Retrofit",
    "Http",
    "Dio",
    "XML",
    "Provider",
    "Bloc",
    "GetX",
    "Firebase",
    "HTML",
    "CSS",
    "Material Design",
    "GitHub",
    "CI/CD",
    "Jenkins",
    "Jira",
    "Power Apps",
    "Power BI",
    "Payment Gateway",
    "Google Maps",
    "Dagger/Hilt",
    "MySQL",
    "MVVM",
    "MVP",
    "MVI",
    "Clean Architecture",
    // Add all skills from resume
  ];
  final List<Project> projects = [
    Project(
      title: "Vivek Batra",
      description: "A news application providing details on various topics...",
      url: "https://play.google.com/store/apps/details?id=com.vivek.barta",
      technologies: ["Flutter", "Dart", "MVVM", "Bloc", "Dio"],
    ),
    Project(
      title: "Chess Master",
      description: "Chess app for beginners and grandmasters...",
      url: "https://play.google.com/store/apps/details?id=com.kishan.chess",
      technologies: ["Flutter", "Dart", "MVVM", "Provider"],
    ),
    // Add all projects from resume
  ];

  final List<Education> education = [
    Education(
      course: "B.Tech",
      institution: "PCET, Mohali",
      university: "Punjab Technical University",
      year: "2015",
    ),
    Education(
      course: "Intermediate",
      institution: "BSEB, Patna",
      university: "Bihar Board",
      year: "2010",
    ),
    Education(
      course: "High School",
      institution: "BSEB, Patna",
      university: "Bihar Board",
      year: "2008",
    ),
  ];
}

class Project {
  final String title;
  final String description;
  final String url;
  final List<String> technologies;

  Project({
    required this.title,
    required this.description,
    required this.url,
    required this.technologies,
  });
}

class Education {
  final String course;
  final String institution;
  final String university;
  final String year;

  Education({
    required this.course,
    required this.institution,
    required this.university,
    required this.year,
  });
}