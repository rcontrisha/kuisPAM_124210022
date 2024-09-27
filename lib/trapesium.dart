import 'package:flutter/material.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({Key? key}) : super(key: key);

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  String luas= "";
  String keliling= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trapesium",
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
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage("https://asset.kompas.com/crops/yXi9XRFFVBBRd22q4oYYxjVI8Io=/23x53:1748x1203/750x500/data/photo/2022/01/15/61e2a24016496.png"),
                    height: 100,
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                  "Silakan input kan sebuah angka untuk menghitung luas dan keliling dari Trapesium",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukan Alas a',
                    hintText: 'Alas a',
                  ),

                  onChanged: (value) {
                    a = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty
                        ? 'Tolong masukkan angka 1'
                        : null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Alas b',
                    hintText: 'Alas b',
                  ),

                  onChanged: (value) {
                    b = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty
                        ? 'Tolong masukkan angka 1'
                        : null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Tinggi',
                    hintText: 'Panjang Tinggi',
                  ),

                  onChanged: (value) {
                    c = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty
                        ? 'Tolong masukkan angka 1'
                        : null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Sisi Miring',
                    hintText: 'Panjang Sisi Miring',
                  ),

                  onChanged: (value) {
                    d = int.parse(value);
                  },
                  validator: (value) {
                    return value!.isEmpty
                        ? 'Tolong masukkan angka '
                        : null;
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
                      luas = (0.5 * (a+b) * c).toString();
                      keliling = (a + b + c + d).toString();
                      setState(() {
                      });
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
                    Text('Luas :', style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$luas', style: TextStyle(fontSize: 16, color: Colors.white)),
                    SizedBox(height: 3,),
                    Text('Keliling :', style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text('$keliling', style: TextStyle(fontSize: 16, color: Colors.white)),
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
