class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'AMZ - Language Learning App',
    'AMZ is a language learning app where users can learn different languages through lessons, videos, and quizzes. Built completely in Flutter, with backend API integration using Node.js.',
    'assets/images/amz.png',
    'https://github.com/Talha162',
  ),
  Project(
    'Committee App',
    'A monthly committee management system built in Flutter. It includes admin and user roles, real-time payment tracking, join requests handling, and Firebase backend integration.',
    'assets/images/committee.png',
    'https://github.com/Talha162',
  ),
  Project(
    'Asthma Weather Alert App',
    'A health-focused Flutter app for asthma patients. Monitors temperature and AQI, sending real-time alerts when conditions are unhealthy. Admin panel built with Firestore.',
    'assets/images/asthma.png',
    'https://github.com/Talha162',
  ),
  Project(
    'Sesh Builder',
    'An app to organize casual sports matches (like football) using Flutter and Firebase. Features include match hosting, joining, and player tracking with Google/email auth.',
    'assets/images/sesh.png',
    'https://github.com/Talha162',
  ),
  Project(
    'Cricket Scoring App',
    'A ball-by-ball cricket scoring app with real-time stats, player analytics, and match history. Includes chatbot integration for cricket rule explanations.',
    'assets/images/cricket.png',
    'https://github.com/Talha162',
  ),
  Project(
    'AfghanFlavor - Food Delivery App',
    'A full food delivery application built in Flutter with Firebase backend. Includes real-time order tracking, restaurant browsing, and is available on Play Store and App Store.',
    'assets/images/afghanflavor.png',
    'https://github.com/Talha162',
  ),
  Project(
    'Durshalta - Food Delivery App',
    'Durshalta is another cross-platform food delivery app built in Flutter. Features order handling, push notifications, and payment gateway integration. Available on Play Store and App Store.',
    'assets/images/durshalta.png',
    'https://github.com/Talha162',
  ),
];
