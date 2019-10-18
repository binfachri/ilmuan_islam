import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("IlmuanIslam"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "Muḥammad bin Mūsā al-Khawārizmī",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/1983_CPA_5426_%281%29.png/250px-1983_CPA_5426_%281%29.png",
              "Muḥammad bin Mūsā al-Khawārizmī (bahasa Arab: محمد بن موسى الخوارزمي‎) adalah seorang ahli dalam bidang matematika, astronomi, astrologi, dan geografi yang berasal dari Persia. Lahir sekitar tahun 780 di Khwārizm (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Baghdad. Hampir sepanjang hidupnya, ia bekerja sebagai dosen di Sekolah Kehormatan di Baghdad yang didirikan oleh Khalifah Bani Abbasiyah Al-Ma'mun, tempat ia belajar ilmu alam dan matematik, termasuk mempelajari terjemahan manuskrip Sanskerta dan Yunani\nBuku pertamanya, al-Jabar, adalah buku pertama yang membahas solusi sistematik dari linear dan notasi kuadrat. Sehingga ia disebut sebagai Bapak Aljabar. Al-Khwārizmī juga berperan penting dalam memperkenalkan angka Arab melalui karya Kitāb al-Jam’a wa-l-tafrīq bi-ḥisāb al-Hind yang kelak diadopsi sebagai angka standar yang dipakai di berbagai bahasa serta kemudian diperkenalkan sebagai Sistem Penomoran Posisi Desimal di dunia Barat pada abad ke 12. Ia merevisi dan menyesuaikan Geografi Ptolemeus sebaik mengerjakan tulisan-tulisan tentang astronomi dan astrologi.\nKontribusinya tak hanya berdampak besar pada matematika, tapi juga dalam kebahasaan. Kata \"aljabar\" berasal dari kata al-Jabr, satu dari dua operasi dalam matematika untuk menyelesaikan notasi kuadrat, yang tercantum dalam bukunya. Kata algorisme dan algoritma diambil dari kata algorismi, Latinisasi dari namanya. Namanya juga di serap dalam bahasa Spanyol, guarismo, dan dalam bahasa Portugis, algarismo bermakna digit."),
          _createPageItemUI(
              "Ibnu Sina",
              "https://id.wikipedia.org/wiki/Berkas:Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_(Avicenna)_Mausoleum_-_Hamadan_-_Western_Iran_(7423560860).jpg",
              "Ibnu Sina (980-1037) dikenal juga sebagai \"Avicenna\" di dunia Barat adalah seorang filsuf, ilmuwan, dan dokter kelahiran Persia (sekarang Iran). Ia juga seorang penulis yang produktif yang sebagian besar karyanya adalah tentang filosofi dan kedokteran. Bagi banyak orang, dia adalah \"Bapak Kedokteran Modern\". Karyanya yang sangat terkenal adalah al-Qānūn fī aṭ-Ṭibb yang merupakan rujukan di bidang kedokteran selama berabad-abad.\nIbnu Sina bernama lengkap Abū ‘Alī al-Husayn bin ‘Abdullāh bin Sīnā (Persia ابوعلى سينا Abu Ali Sina, Arab : أبو علي الحسين بن عبد الله بن سينا). Ibnu Sina lahir pada 980 di Afsyahnah daerah dekat Bukhara, sekarang wilayah Uzbekistan dan meninggal bulan Juni 1037 di Hamadan, Persia (Iran).\nDia adalah pengarang dari 450 buku pada beberapa pokok bahasan besar. Banyak di antaranya memusatkan pada filosofi dan kedokteran. \" George Sarton menyebut Ibnu Sina \"ilmuwan paling terkenal dari Islam dan salah satu yang paling terkenal pada semua bidang, tempat dan waktu\". Karyanya yang paling terkenal adalah Kitab Penyembuhan dan Qanun Kedokteran (Al-Qanun fi At Tibb)."),
          _createPageItemUI(
              "Al-Mas'udi",
              "https://id.wikipedia.org/wiki/Berkas:NHM_Bellariastra%C3%9Fe_side_risalit_right_-_Al_Masudi_-_Emmerich_Alexius_Swoboda_3919.jpg",
              "Al-Mas'udi dan Abu al-Hasan Ali ibn al-Husayn ibn Ali al-Mas'udi (المسعودي) adalah ahli sejarah dan ahli geografi yang lahir di Baghdad, Iraq menjelang akhir abad ke-9M. Menurut buku ber­judul Al-Mas’udi and His World, al-Mas’udi dilahirkan pada tahun 283H atau 895 M di kota Baghdad. Al Masudi dilaporkan meninggal dunia di Fustat (Mesir) pada tahun 345H atau 956M. Dia berketurunan Arab iaitu keturunan Abdullah bin Mas'ud seorang sahabat Nabi Muhammad (saw).\nAl- Mas'udi adalah seorang ahli sejarah, geografi, geologi, zoologi, ensiklopedi dalam bidang sains Islam, sekaligus pengembara. Banyak negari yang telah dia kunjungi dan puluhan karya yang telah dihasilkan. Al mas\'Udi disebut sebagai Pilinius dari sastra Arab, karena pengetahuan geografinya. Dalam bukunya Muruj az-Zahab wa Ma\'adin al-jawahir, ia menjelaskan bagaimana terjadinya gempa bumi. Ia juga berkisah tentang laut mati; dan tentang kincir angin pertama, yang menurutnya mungkin sekali merupakan penemuan orang Islam. Ia juga merumuskan teori yang dapat dikatakan sebagai dasar awal dari teori evolusi."),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String nama, String gambar, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(image: NetworkImage(gambar), height: 300.0, fit: BoxFit.cover),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              nama,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 3.0,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
