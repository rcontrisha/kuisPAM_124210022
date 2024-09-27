import 'package:flutter/material.dart';

class LayangLayangPage extends StatefulWidget {
  const LayangLayangPage({Key? key}) : super(key: key);

  @override
  State<LayangLayangPage> createState() => _LayangLayangPageState();
}

class _LayangLayangPageState extends State<LayangLayangPage> {
  int d1 = 0;
  int d2 = 0;
  int s1 = 0;
  int s2 = 0;
  String luas = "";
  String keliling = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Layang-Layang",
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
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      image: NetworkImage(
                          "https://uptdsmpn3bangkalan.sch.id/wp-content/uploads/2024/01/layang-layang.jpg"),
                      height: 100,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: const Text(
                  "Silakan input angka untuk menghitung luas dan keliling dari Layang-Layang",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Panjang Diagonal 1',
                    hintText: 'Masukkan Panjang Diagonal 1',
                  ),
                  onChanged: (value) {
                    d1 = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Tolong masukkan angka 1' : null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Panjang Diagonal 2',
                    hintText: 'Masukkan Panjang Diagonal 2',
                  ),
                  onChanged: (value) {
                    d2 = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Tolong masukkan angka 1' : null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Panjang Sisi 1',
                    hintText: 'Masukkan Panjang Sisi 1',
                  ),
                  onChanged: (value) {
                    s1 = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Tolong masukkan angka 1' : null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Panjang Sisi 2',
                    hintText: 'Masukkan Panjang Sisi 2',
                  ),
                  onChanged: (value) {
                    s2 = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Tolong masukkan angka 1' : null;
                  },
                ),
              ),
              const SizedBox(
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
                      setState(() {
                        luas = (0.5 * d1 * d2).toString();
                        keliling = (2 * (s1 + s2)).toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Hasil Akhir",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Luas :',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$luas',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white)),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text('Keliling :',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$keliling',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white)),
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
