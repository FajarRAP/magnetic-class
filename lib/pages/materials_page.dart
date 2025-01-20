import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../constants.dart';
import '../widgets/content_with_hyperlink.dart';
import '../widgets/image_alert_dialog.dart';
import '../widgets/text_with_hyperlink.dart';

class MaterialsPage extends StatelessWidget {
  const MaterialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Magnet')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Pengertian dan Sifat-Sifat Magnet',
            style: textTheme.titleSmall,
          ),
          TextWithHyperlink(
            content:
                'Magnet adalah benda yang dapat menarik benda yang memiliki sifat magnetik. Memiliki dua kutub, Utara dan Selatan yang tidak dapat terpisahkan.',
            hyperlink: 'Gambar 1',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  filename: '1.png',
                  title: 'Kutub Magnet Yang Tidak Dapat Terpisahkan'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Magnet Berdasarkan Kejadian',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'a. Magnet Alam',
            content:
                'Magnet yang ada atau terbentuk di alam. Seperti bijih besi magnet (Fe3O4).',
            hyperlink: 'Gambar 2',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  filename: '2.png', title: 'Bijih Besi Berbentuk Batuan'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'b. Magnet Buatan',
            content:
                'Magnet yang dibuat oleh manusia dari baja atau besi murni, atau paduan logam seperti nikel (alnico).',
            hyperlink: 'Gambar 3',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  filename: '3.png', title: 'Magnet Buatan Pada Jarum Kompas'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Magnet Berdasarkan Bahan Dasar',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'a. Ferromagnetik',
            content:
                'Mudah dipengaruhi dan dibuat magnet, seperti besi, baja, nikel, dan kobalt.',
            hyperlink: 'Gambar 4',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  title: 'Magnet Buatan dari Besi', filename: '4.png'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'b. Diamagnetik',
            content:
                'Sukar dipengaruhi magnet, seperti bismuth, antimon, intan, air biasa, perak, emas dan tembaga.',
            hyperlink: 'Gambar 5',
            onTap: () => showDialog(
              context: context,
              builder: (context) =>
                  const ImageAlertDialog(title: 'Antimon', filename: '5.png'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'c. Paramagnetik',
            content:
                'Sedikit dipengaruhi magnet, seperti mangan, platina, aluminium, magnesium, timah (tin), oksigen, dan udara.',
            hyperlink: 'Gambar 6',
            onTap: () => showDialog(
              context: context,
              builder: (context) =>
                  const ImageAlertDialog(title: 'Platina', filename: '6.png'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'd. Non Magnetik',
            content:
                'Tidak dapat dipengaruhi magnet, misalnya kaca, kertas, dan kayu.',
            hyperlink: 'Gambar 7',
            onTap: () => showDialog(
              context: context,
              builder: (context) =>
                  const ImageAlertDialog(title: 'Kayu', filename: '7.png'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Magnet Berdasarkan Bentuknya',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'a. Magnet Batang',
            content:
                'Gaya magnet lemah karena lintasan garis gaya lebih panjang.',
            hyperlink: 'Gambar 8',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  title: 'Arah Garis-Garis Gaya Magnet Batang',
                  filename: '8.png'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'b. Magnet U',
            content:
                'Gaya magnet kuat karena lintasan garis gaya lebih pendek.',
            hyperlink: 'Gambar 9',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  title: 'Arah Garis-Garis Gaya Magnet U', filename: '9.png'),
            ),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'c. Magnet Jarum',
            content:
                'Digunakan pada kompas untuk mendeteksi arah karena peka terhadap medan magnet bumi.',
            hyperlink: 'Gambar 10',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                  title: 'Arah Jarum Kompas dan Magnet Bumi',
                  filename: '10.png'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Garis Gaya Magnet',
            style: textTheme.titleSmall,
          ),
          RichText(
            text: TextSpan(
              style: textTheme.bodySmall,
              text:
                  'Garis gaya yang keluar menuju kutub magnet memiliki kerapatan garis gaya berbeda yang disebut ',
              children: <InlineSpan>[
                TextSpan(
                  style: textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                  text: 'fluks magnetik',
                ),
                const TextSpan(
                  text: ' atau dapat dinyatakan dengan ',
                ),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Persamaan 1',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Math.tex(
                              r'\phi = \Beta \Alpha \cos \cos',
                              textStyle: textTheme.bodyLarge,
                              mathStyle: MathStyle.text,
                            ),
                            title: const Text('Persamaan Fluks Magnetik'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 11',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title: 'Fluks Magnetik',
                            filename: '11.png',
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Medan Magnet',
            style: textTheme.titleSmall,
          ),
          Text(
            'Medan magnet adalah ruang di sekitar magnet yang gaya tarik/tolaknya masih dirasakan oleh magnet lain.',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: '1. Medan Magnet Sekitar Benda Magnetik',
            content: 'Medan magnet kuat jika didekatkan dengan benda magnetik.',
            hyperlink: 'Gambar 12',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                title: 'Medan Magnet Ketika Magnet Didekatkan Pada Serbuk Besi',
                filename: '12.png',
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '2. Medan Magnet Karena Arus Listrik',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(
              style: textTheme.bodySmall,
              text:
                  'Pada kawat lurus yang dialiri listrik terdapat garis-garis gaya magnet yang melingkarinya.',
              children: <InlineSpan>[
                const TextSpan(
                  text:
                      ' Dengan kaidah Tangan Kanan Fleming, maka besar medan induksinya adalah ',
                ),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Persamaan 2',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Math.tex(
                                  r'\Beta = \frac{0^\Iota}{2 \alpha}',
                                  textStyle: textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'di mana a = jarak suatu titik terhadap kawat.',
                                  style: textTheme.labelMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            title: const Text(
                                'Persamaan Medan Magnet Pada Kawat Lurus'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 13',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title: 'Kawat Lurus yang Dialiri Arus Listrik',
                            filename: '13.png',
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '3. Medan Magnet Oleh Solenoida dan Toroida',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(
              style: textTheme.bodySmall,
              text:
                  'Besar induksi magnetik pada sumbu solenoida didefisnikan oleh ',
              children: <InlineSpan>[
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Persamaan 3',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Math.tex(
                                  r'{\Beta\scriptstyle 0} = \Iota n = \frac{\Iota N}{L}',
                                  textStyle: textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'dimana µ = permeabilitas bahan solenoida',
                                  style: textTheme.labelMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            title: const Text(
                                'Besar Induksi Magnetik Sumbu Selonoida'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(
                  text:
                      ', sedangkan induksi magnetik di ujung solenoida dapat didefinsikan sebagai ',
                ),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Persamaan 4',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Math.tex(
                                  r'{\Beta\scriptstyle p} = \frac{\Iota n}{2} = \frac{\Iota N}{2L} = \frac{\Beta\scriptstyle 0}{2}',
                                  textStyle: textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            title: const Text(
                                'Besar Induksi Magnetik di Ujung Selonoida'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 14',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title: 'Medan Magnet Pada Solenoida',
                            filename: '14.png',
                          ),
                        ),
                ),
                const TextSpan(
                  text:
                      '. Pada Toroida besar Induksi magnetik di sumbu toroida didefiniskan oleh ',
                ),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Persamaan 5',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Math.tex(
                                    r'{\Beta\scriptstyle 0} = \Iota n = \frac{\Iota N}{2R} = \frac{\Beta\scriptstyle 0}{2}',
                                    textStyle: textTheme.bodyLarge,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'dimana n = jumlah lilitan per satuan panjang',
                                  style: textTheme.labelMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 12),
                                Align(
                                  alignment: Alignment.center,
                                  child: Math.tex(r'\frac{N}{L}'),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'L = panjang keliling lingkaran = 2R',
                                  style: textTheme.labelMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            title: const Text(
                                'Besar Induksi Magnetik di Ujung Selonoida'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 15',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title: 'Medan Magnet Pada Toroida',
                            filename: '15.png',
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '4. Pengaruh Medan Magnet',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          ContentWithHyperlink(
            title: 'a. Pada Bahan Magnet',
            content:
                'Ketika bahan magnet dijauhkan dari magnet, sifat magnetismenya menghilang, namun sebagian kekuatan magnet (reman magnet) masih tersisa sementara waktu. Remanen magnet adalah bahan magnet yang hanya dapat menghasilkan medan magnet yang bersifat sementara. Contonya paku atau obeng.',
            hyperlink: 'Gambar 16',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const ImageAlertDialog(
                title: 'Paku Ketika Didekatkan Dengan Magnet',
                filename: '16.png',
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'b. Pada Muatan Bergerak',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(
              style: textTheme.bodySmall,
              text:
                  'Gaya yang terjadi oleh benda bermuatan yang bergerak di dalam suatu medan magnet disebut Gaya Lorentz. Gaya tersebut akan selau tegak lurus pada arah gerak sehingga terjadi ',
              children: <InlineSpan>[
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'gerak melingkar',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [Math.tex(r'F = q\,\nu\,B\,\sin')],
                            ),
                            title: const Text('Gerak Melingkar'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(
                  text:
                      '. Lintasan partikel bermuatan merupakan lingkaran dengan jari jari ',
                ),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'R',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Math.tex(r'R = \frac{m\,v}{q\,B}'),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'dengan v = w R  dan w = 2f',
                                  style: textTheme.labelMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            title: const Text('Jari-Jari'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 17',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title:
                                'Gaya Pada Muatan Bergerak Karena Medan Magnet',
                            filename: '17.png',
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'c. Pada Kawat Berarus',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(
              style: textTheme.bodySmall,
              text:
                  'Melalui kawat lurus sepanjang yang terletak di sumbu-y mengalir arus listrik dengan kuat arus I maka ',
              children: <InlineSpan>[
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gaya Lorentz',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Math.tex(r'F = \Iota\,B\,\sin'),
                                const SizedBox(height: 12),
                                Math.tex(r'\Iota = \frac{q}{t}'),
                              ],
                            ),
                            title: const Text('Gaya Lorentz'),
                            titleTextStyle: textTheme.bodyMedium,
                          ),
                        ),
                ),
                const TextSpan(text: '. '),
                TextSpan(
                  style: hyperlinkStyle,
                  text: 'Gambar 18',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                          context: context,
                          builder: (context) => const ImageAlertDialog(
                            title: 'Gaya Pada Kawat Lurus Berarus',
                            filename: '18.png',
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
