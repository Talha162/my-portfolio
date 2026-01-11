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
        KnowledgeText(knowledge: 'Firebase Auth, Firestore, Storage'),
        KnowledgeText(knowledge: 'Cloud Functions & Real-time DB'),
        KnowledgeText(knowledge: 'REST API Design & Integration'),
        KnowledgeText(knowledge: 'Node.js / Express Backend'),
        KnowledgeText(knowledge: 'State Management (GetX)'),
        KnowledgeText(knowledge: 'Clean Architecture Patterns'),
        KnowledgeText(knowledge: 'Responsive UI/UX Design'),
        KnowledgeText(knowledge: 'Stripe & Payment Flows'),
        KnowledgeText(knowledge: 'Git & GitHub Workflows'),
        KnowledgeText(knowledge: 'Android Studio & VS Code'),
      ],
    );
  }

}
