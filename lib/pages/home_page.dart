import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import '../widgets/vertical_image_and_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Magnetic Class'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Nama Materi',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          Text(
            'Deskripsi singkat tentang apa yang akan di pelajari',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade400,
            ),
            height: 165,
            width: double.infinity,
          ),
          const SizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: PrimaryButton(
                onPressed: () {},
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Alat Eksperimen',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 2 / 1.6,
            shrinkWrap: true,
            children: const <Widget>[
              VerticalImageAndTitle(imageUrl: '', title: 'Penggaris Besi'),
              VerticalImageAndTitle(imageUrl: '', title: 'Spidol Snowman'),
              VerticalImageAndTitle(
                  imageUrl: '', title: 'Stiker Pola Liku-liku'),
              VerticalImageAndTitle(
                  imageUrl: '', title: 'Sarung Tangan Medis Karet'),
              VerticalImageAndTitle(imageUrl: '', title: 'Kain Lap Kacamata'),
              VerticalImageAndTitle(imageUrl: '', title: 'Klip Plastik'),
            ],
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: PrimaryButton(
                onPressed: () => Navigator.pushNamed(context, '/tools'),
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Bahan Eksperimen',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 2 / 1.6,
            shrinkWrap: true,
            children: const <Widget>[
              VerticalImageAndTitle(imageUrl: '', title: 'Penggaris Besi'),
              VerticalImageAndTitle(imageUrl: '', title: 'Spidol Snowman'),
              VerticalImageAndTitle(
                  imageUrl: '', title: 'Stiker Pola Liku-liku'),
              VerticalImageAndTitle(
                  imageUrl: '', title: 'Sarung Tangan Medis Karet'),
              VerticalImageAndTitle(imageUrl: '', title: 'Kain Lap Kacamata'),
              VerticalImageAndTitle(imageUrl: '', title: 'Klip Plastik'),
            ],
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: PrimaryButton(
                onPressed: () {},
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Langkah Eksperimen',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          UnconstrainedBox(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
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
                      'Sub Langkah Eksperimen',
                      style: textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade400,
                    ),
                    margin: const EdgeInsets.all(16),
                    height: 120,
                    width: double.infinity,
                    child: const Icon(Icons.play_circle_rounded, size: 36),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: PrimaryButton(
                onPressed: () {},
                text: 'Selengkapnya',
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Profile Pengembang',
            style: textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          const CircleAvatar(radius: 48),
          const SizedBox(height: 12),
          UnconstrainedBox(
            child: PrimaryButton(
              onPressed: () {},
              text: 'Lihat Profil',
            ),
          )
        ],
      ),
    );
  }
}
