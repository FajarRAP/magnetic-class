import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/experiment_steps_item.dart';

class ExperimentStepsPage extends StatelessWidget {
  const ExperimentStepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Langkah Eksperimen')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          Text(
            'Langkah Penyiapan Substrat',
            style: textTheme.titleSmall,
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
            style: textTheme.titleSmall,
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
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          const ExperimentStepsItem(
            title: 'Langkah 1',
            imageUrl: '${characterizationUrl}1.jpg',
            description:
                'mencelupkan sampel ke dalam cairan nitrogen dan diukur perubahan suhu terhadap potensial dengan LoggerPro',
          )
        ],
      ),
    );
  }
}
