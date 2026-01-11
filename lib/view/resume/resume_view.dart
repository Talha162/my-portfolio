import 'package:flutter/material.dart';
import '../../model/resume_model.dart';
import '../../res/constants.dart';
import '../../view_model/responsive.dart';
import '../projects/components/title_text.dart';
import 'components/resume_card.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(height: defaultPadding),
            const TitleText(prefix: 'Career', title: 'Resume'),
            const SizedBox(height: defaultPadding / 2),
            Text(
              'Highly motivated Full-Stack Flutter Developer focused on scalable mobile systems,'
              ' clean architecture, and cloud-integrated products that deliver real-world impact.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: bodyTextColor,
                    height: 1.5,
                  ),
            ),
            const SizedBox(height: defaultPadding),
            ResumeSection(
              title: 'Experience',
              child: WrapCards<ResumeItem>(
                items: experienceList,
                itemBuilder: (item) => ResumeCard(item: item),
              ),
            ),
            const SizedBox(height: defaultPadding * 1.5),
            ResumeSection(
              title: 'Education',
              child: WrapCards<EducationItem>(
                items: educationList,
                itemBuilder: (item) => EducationCard(item: item),
              ),
            ),
            const SizedBox(height: defaultPadding * 1.5),
            ResumeSection(
              title: 'Core Skills',
              child: Wrap(
                spacing: defaultPadding / 2,
                runSpacing: defaultPadding / 2,
                children: coreSkills
                    .map((skill) => SkillChip(label: skill))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeSection extends StatelessWidget {
  const ResumeSection({super.key, required this.title, required this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: defaultPadding),
        child,
      ],
    );
  }
}

class WrapCards<T> extends StatelessWidget {
  const WrapCards({super.key, required this.items, required this.itemBuilder});
  final List<T> items;
  final Widget Function(T item) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final columns = maxWidth > 1100 ? 2 : 1;
        final cardWidth =
            (maxWidth - (columns - 1) * defaultPadding) / columns;
        return Wrap(
          spacing: defaultPadding,
          runSpacing: defaultPadding,
          children: items
              .map((item) => SizedBox(width: cardWidth, child: itemBuilder(item)))
              .toList(),
        );
      },
    );
  }
}

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 3,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white10),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
