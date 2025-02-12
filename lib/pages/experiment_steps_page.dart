import 'package:flutter/material.dart';
import 'package:magnetic_class/widgets/video_step.dart';

import '../constants.dart';
import '../widgets/experiment_steps_item.dart';

class ExperimentStepsPage extends StatelessWidget {
  const ExperimentStepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Langkah Eksperimen')),
      backgroundColor: colorScheme.primary,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          Text(
            'Langkah Penyiapan Substrat',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          ListView.separated(
            itemBuilder: (context, index) => ExperimentStepsItem(
              title: 'Langkah ${index + 1}',
              imageUrl: '$substrateUrl${index + 1}.png',
              description: substrateDescriptions[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: substrateDescriptions.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(height: 50),
          Text(
            'Langkah Elektroplating',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          ListView.separated(
            itemBuilder: (context, index) => ExperimentStepsItem(
              title: 'Langkah ${index + 1}',
              imageUrl: '$electroPlatingUrl${index + 1}.png',
              description: electroplatingDescriptions[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: electroplatingDescriptions.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(height: 50),
          Text(
            'Langkah Karakterisasi',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          const ExperimentStepsItem(
            title: 'Langkah 1',
            imageUrl: '${characterizationUrl}1.jpg',
            description:
                'mencelupkan sampel ke dalam cairan nitrogen dan diukur perubahan suhu terhadap potensial dengan LoggerPro',
          ),
          const SizedBox(height: 50),
          Container(
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
                    'Video Langkah Eksperimen',
                    style: textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: VideoStep(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Eksperimen pembuatan sensor suhu pada lapisan magnetik Cu/NiFe berbantuan medan magnet sejajar',
                    style: textTheme.labelMedium,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Hasil Eksperimen',
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 12),
          const ExperimentStepsItem(
            height: 400,
            title: 'Lapisan Cu/NiFe',
            imageUrl: 'assets/images/tools/lapisan-tipis-cu-nife.jpg',
            description:
                'Hasil eksperimen pembuatan sensor suhu pada lapisan magnetik Cu/NiFe berbantuan medan magnet sejajar',
          ),
        ],
      ),
    );
  }
}
