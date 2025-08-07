import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter & Dart'),
        KnowledgeText(knowledge: 'Firebase (Auth, Firestore, Storage etc.)'),
        KnowledgeText(knowledge: 'REST API Integration'),
        KnowledgeText(knowledge: 'Backend Integration (Node.js basics)'),
        KnowledgeText(knowledge: 'State Management (GetX)'),
        KnowledgeText(knowledge: 'Git & GitHub'),
        KnowledgeText(knowledge: 'Responsive UI Design'),
        KnowledgeText(knowledge: 'Android Studio & VS Code'),
        KnowledgeText(knowledge: 'Networking & Basic Cyber Security'),
        KnowledgeText(knowledge: 'Machine Learning Basics'),
      ],
    );
  }

}
