import 'package:flutter/material.dart';
import '../../../model/resume_model.dart';
import '../../../res/constants.dart';

class ResumeCard extends StatelessWidget {
  const ResumeCard({super.key, required this.item});
  final ResumeItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            item.organization,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: accentGold,
                ),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            '${item.location} | ${item.period}',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: bodyTextColor,
                ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...item.highlights.map((text) {
            return Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding / 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(color: Colors.white)),
                  Expanded(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: bodyTextColor,
                            height: 1.5,
                          ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({super.key, required this.item});
  final EducationItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.degree,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            item.institute,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: accentGold,
                ),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            '${item.location} | ${item.period}',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: bodyTextColor,
                ),
          ),
        ],
      ),
    );
  }
}
