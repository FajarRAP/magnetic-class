const url = 'assets/images/';
const ingredientsUrl = '${url}ingredients/';
const toolsUrl = '${url}tools/';
const stepsUrl = '${url}steps/';
const substrateUrl = '${stepsUrl}substrate/';
const electroPlatingUrl = '${stepsUrl}electroplating/';
const characterizationUrl = '${stepsUrl}characterization/';

const homeRoute = '/';
const experimentItemsRoute = '${homeRoute}experiment-items';
const experimentStepsRoute = '${homeRoute}experiment-steps';

class Item {
  final String title;
  final String imageUrl;
  final String description;

  const Item({
    required this.title,
    required this.imageUrl,
    required this.description,
  });
}

class Tool extends Item {
  const Tool({
    required super.title,
    required super.imageUrl,
    required super.description,
  });
}

class Ingredient extends Item {
  const Ingredient({
    required super.title,
    required super.imageUrl,
    required super.description,
  });
}

class StepParams {
  const StepParams({
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;
}

const ingredients = <Ingredient>[
  Ingredient(
    title: 'Ferri chlorit',
    imageUrl: ingredientsUrl,
    description: 'Laruran untuk mengkorosikan pelat tembaga',
  ),
  Ingredient(
    title: 'Plat Nikel',
    imageUrl: ingredientsUrl,
    description: 'Sebagai anoda',
  ),
  Ingredient(
    title: 'Plat besi',
    imageUrl: ingredientsUrl,
    description: 'Sebagai anoda',
  ),
  Ingredient(
    title: 'Larutan elektrolit (NiCl2 60 gr, NiSO4 260 gr, H3BO3 40 gr)',
    imageUrl: ingredientsUrl,
    description: 'Membuat larutan',
  ),
  Ingredient(
    title: 'Stiker pola liku-liku',
    imageUrl: ingredientsUrl,
    description: 'Membuat pola pada pelat tembaga',
  ),
];

const tools = <Tool>[
  Tool(
    title: 'Penggaris besi',
    imageUrl: toolsUrl,
    description: 'Untuk mengukur ukuran substrat',
  ),
  Tool(
    title: 'Spidol snowman',
    imageUrl: toolsUrl,
    description: 'Menggambar substrat pada pelat tembaga',
  ),
  Tool(
    title: 'Sarung tangan medis karet',
    imageUrl: toolsUrl,
    description:
        'Melindungi tangan agar tidak terkena bubuk ferri chlorite yang dapat menyebabkan iritasi',
  ),
  Tool(
    title: 'Kain Lap Kacamata',
    imageUrl: toolsUrl,
    description:
        'Karena halus maka dipilih untuk menggosokkan autosol dan pasta gigi ke pelat tembaga (Cu)',
  ),
  Tool(
    title: 'Klip plastik',
    imageUrl: toolsUrl,
    description: 'Untuk menyimpan substrat',
  ),
  Tool(
    title: 'Loyang plastik',
    imageUrl: toolsUrl,
    description: 'Wadah untuk mengkorosikan tembaga',
  ),
  Tool(
    title: 'Gelas kimia 100 ml',
    imageUrl: toolsUrl,
    description: 'Untuk mengukur volume larutan yang digunakan',
  ),
  Tool(
    title: 'Gerinda kecil',
    imageUrl: toolsUrl,
    description: 'Untuk memotong pelat tembaga',
  ),
  Tool(
    title: 'Gunting besar',
    imageUrl: toolsUrl,
    description: 'Untuk memotong pelat Nikel dan Besi',
  ),
  Tool(
    title: 'Tisu Paseo',
    imageUrl: toolsUrl,
    description: 'Untuk mengeringkan substrat',
  ),
  Tool(
    title: 'Pinset',
    imageUrl: toolsUrl,
    description: 'Alat bantu memegang substrat agar tetap steril',
  ),
  Tool(
    title: 'Ultrasonic cleaner',
    imageUrl: toolsUrl,
    description:
        'Untuk membersihkan substrat dengan cairan alkohol dan aquadest',
  ),
  Tool(
    title: 'Hair dryer',
    imageUrl: toolsUrl,
    description:
        'Mengeringkan substrat setelah dibersihkan dengan ultrasonic cleaner',
  ),
  Tool(
    title: 'Neraca ohauss',
    imageUrl: toolsUrl,
    description: 'Menimbang substrat',
  ),
  Tool(
    title: 'Sikat gigi dengan bulu halus',
    imageUrl: toolsUrl,
    description: 'Untuk membersihkan substrat',
  ),
  Tool(
    title: 'Kertas label',
    imageUrl: toolsUrl,
    description: 'Untuk penamaan substrat',
  ),
  Tool(
    title: 'Sunlight',
    imageUrl: toolsUrl,
    description: 'Memudahkan pembersihan larutan ferri chlorit pada subtrat',
  ),
  Tool(
    title: 'Autosol',
    imageUrl: toolsUrl,
    description: 'Bahan pembersih substrat agar mengkilap',
  ),
  Tool(
    title: 'Pasta gigi',
    imageUrl: toolsUrl,
    description: 'Membersihkan substrat',
  ),
  Tool(
    title: 'Cairan aseton',
    imageUrl: toolsUrl,
    description: 'Mempermudah melepaskan stiker pada pelat tembaga',
  ),
  Tool(
    title: 'Aquadest',
    imageUrl: toolsUrl,
    description: 'Membilas aseton',
  ),
  Tool(
    title: 'Air',
    imageUrl: toolsUrl,
    description: 'Membuat larutan ferri chlorit',
  ),
  Tool(
    title: 'Alkohol',
    imageUrl: toolsUrl,
    description: 'Membersihkan substrat setelah aquades',
  ),
  Tool(
    title: 'Laptop yang sudah terinstall software Logger Pro',
    imageUrl: toolsUrl,
    description: 'Untuk mengambil data arus',
  ),
  Tool(
    title: 'Labquest',
    imageUrl: toolsUrl,
    description: 'Mengukur arus yang disambungkan ke laptop',
  ),
  Tool(
    title: 'Rangkaian alat elektroplating berbantuan medan magnet sejajar',
    imageUrl: toolsUrl,
    description: 'Alat elektroplating berbantuan medan magnet sejajar',
  ),
  Tool(
    title: 'Gelas kimia 1000 ml',
    imageUrl: toolsUrl,
    description: 'Wadah larutan',
  ),
  Tool(
    title: 'Ampere meter',
    imageUrl: toolsUrl,
    description: 'Mengukur arus saat proses elektroplating',
  ),
  Tool(
    title: 'Termometer',
    imageUrl: toolsUrl,
    description: 'Mengukur suhu larutan',
  ),
  Tool(
    title: 'Hot plate atau kompor listrik',
    imageUrl: toolsUrl,
    description: 'Memanaskan larutan',
  ),
  Tool(
    title: 'Pinset',
    imageUrl: toolsUrl,
    description: 'Alat bantu memegang sampel',
  ),
  Tool(
    title: 'Hair dryer',
    imageUrl: toolsUrl,
    description: 'Mengeringkan sampel',
  ),
  Tool(
    title: 'Tisu',
    imageUrl: toolsUrl,
    description: 'Mengeringkan sampel',
  ),
  Tool(
    title: 'Sendok plastik',
    imageUrl: toolsUrl,
    description: 'Mengambil bubuk ferri chlorit dan bahan-bahan larutan',
  ),
  Tool(
    title: 'Plastik klip',
    imageUrl: toolsUrl,
    description: 'Menyimpan sampel',
  ),
  Tool(
    title: 'Kertas label',
    imageUrl: toolsUrl,
    description: 'Penamaan sampel',
  ),
  Tool(
    title: 'Timer smartphone',
    imageUrl: toolsUrl,
    description: 'Mengukur waktu proses elektroplating',
  ),
  Tool(
    title: 'Neraca ohauss',
    imageUrl: toolsUrl,
    description: 'Menimbang bahan-bahan pembuat larutan dan sampel',
  ),
  Tool(
    title: 'Aquades',
    imageUrl: toolsUrl,
    description: 'Membuat larutan',
  ),
  Tool(
    title: 'Substrat',
    imageUrl: toolsUrl,
    description: 'Sebagai katoda',
  ),
  Tool(
    title: 'Four Point Probe (FPP)',
    imageUrl: toolsUrl,
    description: 'Mengukur resistivitas lapisan Cu/NiFe',
  ),
  Tool(
    title: 'Nitrogen cair',
    imageUrl: toolsUrl,
    description: 'Sumber suhu rendah',
  ),
  Tool(
    title: 'Voltage probe',
    imageUrl: toolsUrl,
    description: 'Mengukur tegangan output',
  ),
  Tool(
    title: 'Termokopel',
    imageUrl: toolsUrl,
    description: 'Pendeteksi sensor suhu',
  ),
  Tool(
    title: 'Transduser',
    imageUrl: toolsUrl,
    description: 'Pengubah data analog ke digital',
  ),
  Tool(
    title: 'Lapisan tipis Cu/NiFe',
    imageUrl: toolsUrl,
    description: 'Sampel yang akan diuji',
  ),
];

const steps = <StepParams>[
  StepParams(title: 'Penyiapan Substrat', imageUrl: '${substrateUrl}1.png'),
  StepParams(title: 'Elektroplating', imageUrl: '${electroPlatingUrl}1.png'),
  StepParams(title: 'Karakterisasi', imageUrl: '${characterizationUrl}1.jpg'),
];

const substrateDescriptions = <String>[
  'Membuat ukuran (7 x 1) cm untuk tiap substrat pada tembaga dengan bolpoint dan penggaris',
  'Memotong pelat tembaga yang telah diukur dengan gerinda',
  'Menyiapkan pelat besi dengan memotong nya menggunakan gunting sesuai kebutuhan',
  'Menyiapkan pelat nikel dengan memotong nya menggunakan gunting sesuai kebutuhan',
  'Menempelken stiker pada pelat tembaga. Lalu tunggu sekitar 2 menit hingga stiker benar benar tertempel pada pelat tembaga.',
  'Melarutkan bubuk ferri chlorit dengan air pada baki untuk mengkorosikan tembaga. Lalu goyang – goyangkan baki untuk membantu mempercepat mengkorosikan tembaga',
  'Mencuci substrat dengan sunlight dan menggosok sampel secara halus menggunakan sikat untuk membersihkan sisa – sisa larutan ferri chlorit.',
  'Membilas substrat pada air mengalir',
  'Melepas stiker dengan dilarutkan dalam larutan aceton selama 5 menit',
  'Menggosokkan autosol pada substrat, pelat nikel dan besi dengan tisu/kain halus agar bersih dan mengkilap. Gosok substrat dengan searah menggunakan tisu/kain halus.',
  'Setelah mengkilap, bersihkan kembali substrat dengan pepsodent dan gosok secara halus untuk hasil substrat yang lebih bersih dan mengkilap',
  'Membilas substrat, pelat nikel dan besi dengan sunlight dan air mengalir dengan menggosok secara halus menggunakan sikat untuk membersihkan sisa-sisa autosol dan pepdosent',
  'Untuk menyeterilkan substrat, maka substrat disterilkan dengan cairan aquades dan dilanjutkan menyeterilkan substrat 3 menit dengan cairan alkohol selama 3 menit menggunakan ultrasonik cleaner',
  'Mengeringkan subtrat dengan hair dryer',
  'Melakukan penimbangan massa substrat dengan neraca Ohauss secara berulang dan mencatat sebagai data massa substrat sebelum plating',
  'Menyimpan subtrat ke dalam plastik klip agar tidak korosi. Setiap plastik klip diberi penamaan substrat',
];

const electroplatingDescriptions = <String>[
  'Memanaskan larutan elektrolit hingga mencapai 60 ˚C dengan kompor listrik',
  'Menempatkan pelat nikel dan besi pada anoda sedangkan substrat (tembaga) pada anoda pada alat plating',
  'Menentukan jarak elektroda yaitu 4 cm',
  'Memplating substrat dalam larutan elektrolit selama 4 menit dan dengan tegangan 4,5 volt',
  'Membilas sampel dengan alkohol dan aquades dengan ultrasonic cleaner selama 3 menit. Lalu keringkan dengan hair dryer',
  'Menimbang massa sampel dengan neraca Ohauss dan mencatatnya sebagai data massa sampel setelah plating',
  'Mengukur resistivitas lapisan dengan Four Point Probe (FPP)',
];
