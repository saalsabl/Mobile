import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ======================
    // 🔹 titleSection
    // ======================
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Pantai di Bali',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Bali, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // soal 3
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // ======================
    // 🔹 buttonSection (Langkah 2)
    // ======================
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // ======================
    // 🔹 textSection (Langkah 3)
    // ======================
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Pantai Pandawa merupakan salah satu destinasi wisata populer di Bali '
      'yang terkenal dengan hamparan pasir putihnya dan air laut berwarna biru jernih. '
      'Pantai ini dikelilingi tebing kapur tinggi dengan patung para Pandawa Lima '
      'yang menjadi ikon utamanya. Selain menikmati pemandangan yang indah, '
      'pengunjung juga dapat melakukan berbagai aktivitas seperti berenang, '
      'bermain kano, dan menikmati kuliner khas pantai.\n\n'
      'Disusun oleh: Aaisyah Nursalsabiil (2341720171)',
      softWrap: true,
    ),
  );

    // ======================
    // 🔹 MaterialApp utama
    // ======================
    return MaterialApp(
      title: 'Flutter layout: Aaisyah Nursalsabiil 2341720171',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
    children: [
      Image.asset(
        'img/pandawa_beach.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
      titleSection,
      buttonSection,
      textSection,
    ],
  ),
),
    );
  }

  // ======================
  // 🔹 Fungsi pembuat button
  // ======================
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
