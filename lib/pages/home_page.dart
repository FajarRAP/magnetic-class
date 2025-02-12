import 'package:flutter/material.dart';

import '../constants.dart';
import '../helpers.dart';
import '../widgets/outline_primary_button.dart';
import '../widgets/vertical_image_and_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(title: const Text('Magnetic Class')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Magnet',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          Text(
            'Anda akan mempelajari tentang magnet',
            style: textTheme.bodySmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/materials/magnet.png'),
              ),
            ),
            height: 165,
            width: double.infinity,
          ),
          const SizedBox(height: 12),
          Text(
            'Magnet adalah suatu benda yang mampu menarik benda lain di sekitarnya yang memiliki sifat khusus ...',
            style: textTheme.bodySmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: OutlinePrimaryButton(
                onPressed: () => Navigator.pushNamed(context, materialsRoute),
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          // Experiment Tools
          Text(
            'Alat Eksperimen',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
              6,
              (index) => VerticalImageAndTitle(
                title: tools[index].title,
                imageUrl: getImageItemPath(tools[index]),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: OutlinePrimaryButton(
                onPressed: () {
                  final args = <String, dynamic>{
                    'title': 'Alat Eksperimen',
                    'items': tools
                  };
                  Navigator.pushNamed(context, experimentItemsRoute,
                      arguments: args);
                },
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          // Experiment Ingredients
          Text(
            'Bahan Eksperimen',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
              6,
              (index) => VerticalImageAndTitle(
                title: ingredients[index].title,
                imageUrl: getImageItemPath(ingredients[index]),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: OutlinePrimaryButton(
                onPressed: () {
                  final args = {
                    'title': 'Bahan Eksperimen',
                    'items': ingredients
                  };
                  Navigator.pushNamed(context, experimentItemsRoute,
                      arguments: args);
                },
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          // Experiment Steps
          Text(
            'Langkah Eksperimen',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: ListView.separated(
              itemBuilder: (context, index) => UnconstrainedBox(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0xFFBDBDBD),
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.grey.shade300,
                  ),
                  width: 250,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          color: colorScheme.primaryContainer,
                        ),
                        padding: const EdgeInsets.all(8),
                        width: double.infinity,
                        child: Text(
                          steps[index].title,
                          style: textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(steps[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.all(16),
                        height: 120,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: 3,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: OutlinePrimaryButton(
                onPressed: () =>
                    Navigator.pushNamed(context, experimentStepsRoute),
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          // Developer Profile
          Text(
            'Profile Pengembang',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          UnconstrainedBox(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  alignment: Alignment(0, -.5),
                  image: AssetImage('${url}profile.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              width: 120,
              height: 120,
            ),
          ),
          const SizedBox(height: 12),
          UnconstrainedBox(
            child: OutlinePrimaryButton(
              onPressed: () => Navigator.pushNamed(context, profileRoute),
              text: 'Lihat Profil',
            ),
          )
        ],
      ),
    );
  }
}
