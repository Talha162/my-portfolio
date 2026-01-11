class ResumeItem {
  final String title;
  final String organization;
  final String location;
  final String period;
  final List<String> highlights;

  const ResumeItem({
    required this.title,
    required this.organization,
    required this.location,
    required this.period,
    required this.highlights,
  });
}

class EducationItem {
  final String degree;
  final String institute;
  final String location;
  final String period;

  const EducationItem({
    required this.degree,
    required this.institute,
    required this.location,
    required this.period,
  });
}

const List<ResumeItem> experienceList = [
  ResumeItem(
    title: 'Full-Stack Flutter Developer',
    organization: 'Infiniti Softwares Company',
    location: 'Peshawar, Pakistan',
    period: 'SEP 2024 - PRESENT',
    highlights: [
      'Build production-grade Flutter apps and admin dashboards for international clients.',
      'Deliver end-to-end features using Firebase, Cloud Functions, and REST APIs.',
      'Collaborate with design and QA teams to ship scalable, stable releases.',
    ],
  ),
  ResumeItem(
    title: 'Full-Stack Flutter Developer',
    organization: 'Nextera Software Company',
    location: 'Saddar Deans, Peshawar',
    period: 'MAR 2022 - AUG 2024',
    highlights: [
      'Developed and deployed multiple Flutter apps backed by Firebase and Node.js.',
      'Implemented authentication, data modeling, and real-time flows for enterprise apps.',
      'Improved UI/UX quality, performance, and reliability across releases.',
    ],
  ),
];

const List<EducationItem> educationList = [
  EducationItem(
    degree: 'Bachelor of Computer Science',
    institute: 'City University of Science & IT',
    location: 'Peshawar, Pakistan',
    period: '2021 - 2025',
  ),
  EducationItem(
    degree: 'Intermediate',
    institute: 'HIMS Degree College',
    location: 'Peshawar, Pakistan',
    period: '2019 - 2021',
  ),
  EducationItem(
    degree: 'Matriculation',
    institute: 'Beacon Public School',
    location: 'Peshawar, Pakistan',
    period: '2008 - 2019',
  ),
];

const List<String> coreSkills = [
  'Flutter',
  'Dart',
  'Firebase',
  'Cloud Functions',
  'REST APIs',
  'Node.js / Express',
  'Clean Architecture',
  'Realtime Databases',
  'UI/UX Design',
  'Git & GitHub',
];
