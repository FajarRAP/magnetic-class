import 'package:flutter/material.dart';
import 'package:magnetic_class/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Pengembang')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          
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
          const SizedBox(height: 16),
          Text(
            'Selly Violita Septiningrum',
            style: textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          Text(
            'Pendidikan Fisika',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            '2100007011',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text('Siapa saya?', style: textTheme.titleSmall),
          const Text(
              'Selama studi, saya memiliki minat dalam integrasi nano teknologi dalam pendidikan, terutama dalam pengembangan media pembelajaran digital. Saya percaya bahwa teknologi dapat memberikan kontribusi besar dalam meningkatkan kualitas pendidikan dan membantu mahasiswa memahami konsep-konsep yang kompleks.\nDalam pengembangan aplikasi ini, saya berperan sebagai pengembang utama, mulai dari analisis kebutuhan hingga desain dan implementasi. Saya juga bertanggung jawab untuk memastikan aplikasi dapat berfungsi sesuai dengan tujuan penelitian dan memberikan manfaat sebagai media pembelajaran interaktif untuk materi medan magnet.')
        ],
      ),
    );
  }
}
