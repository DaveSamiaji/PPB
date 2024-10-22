import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// fungsi membuat tombol
Column createButton(String label, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
      Container(
        // mengatur jarak teks dengan icon diatasnya
        padding: const EdgeInsets.only(top: 10),
        child: Text(label),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // variabel gambar
    Widget expanded = Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createButton(' ', Icons.arrow_back_ios),
          Expanded(
            child: ClipRRect(
              child: Image.asset('images/salad.png'),
            ),
          ),
          createButton(' ', Icons.arrow_forward_ios),
        ],
      ),
    );

    Widget titleSection = Container(
      // mengatur jarak dari kiri, atas, kanan, bawah
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Salad',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
            ],
          )
        ],
      ),
    );

    // variabel review user1
    Widget reviewSection1 = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10), // Tambahkan jarak kanan
            child: Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 50,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sabil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Salad ini sangat segar dan nikmat. Ukuran porsi cukup besar dengan harganya yang terjangkau.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Color.fromARGB(255, 180, 179, 175)),
              ],
            ),
          ),
        ],
      ),
    );

    // variabel review user2
    Widget reviewSection2 = Container(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10), // Tambahkan jarak kanan
            child: Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 50,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dave',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rasanya luar biasa! Pelayanan cepat dan ramah, serta harga yang masuk akal. Pilihan yang sempurna untuk makan sehat.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );

    // variabel review user3
    Widget reviewSection3 = Container(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start, // Pindahkan ikon ke kiri
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10), // Tambahkan jarak kanan
            child: Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 50,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salsa',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Porsi mengenyangkan tetapi saya mendapat beberapa sayuran yang kurang segar',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Color.fromARGB(255, 180, 179, 175)),
                Icon(Icons.star, color: Color.fromARGB(255, 180, 179, 175)),
              ],
            ),
          ),
        ],
      ),
    );

    // variabel barisan tombol
    Widget buttonSection = Container(
      // padding: const EdgeInsets.all(20),
      padding: const EdgeInsets.fromLTRB(70, 25, 70, 25),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
        onPressed: () {},
        child: Text(
          "Recipe",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Recipes'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            //gambar,
            expanded,
            //judul,
            titleSection,
            //review1,
            reviewSection1,
            //review2,
            reviewSection2,
            //review3,
            reviewSection3,
            //button,
            buttonSection,
          ],
        ),
        drawer: Drawer(
          //drawer navigation on scaffold
          child: SafeArea(
            child: Column(
              //column widget
              children: [
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text("More Recipes"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
