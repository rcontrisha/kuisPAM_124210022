import 'package:flutter/material.dart';
import 'dart:math';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({Key? key}) : super(key: key);

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  int sisi = 0;
  String luas = "";
  String keliling = "";
  var phi = pi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lingkaran",
        ),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://rumuspintar.com/wp-content/uploads/2019/09/Luas-Lingkaran.jpg',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                  "Silakan input kan sebuah angka untuk menghitung luas dan keliling dari Lingkaran",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Jari-jari',
                    hintText: 'Masukkan Panjang Jari-jari',
                  ),
                  onChanged: (value) {
                    sisi = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Tolong masukkan angka 1' : null;
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    child: const Text('Hitung'),
                    color: Colors.deepPurpleAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      luas = (phi * (sisi * sisi)).toString();
                      keliling = (phi * (2 * sisi)).toString();
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Hasil Akhir",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Luas :',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$luas',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Keliling :',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$keliling',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
