import 'package:flutter/material.dart';
import 'package:kuispam_124210022/beranda.dart';
import 'package:kuispam_124210022/profile.dart';

class PrimaPage extends StatefulWidget {
  const PrimaPage({Key? key}) : super(key: key);

  @override
  _PrimaPageState createState() => _PrimaPageState();
}

class _PrimaPageState extends State<PrimaPage> {
  int number = 0;
  String result = "";
  int _currentIndex = 1;

  bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  void checkPrime() {
    setState(() {
      result = isPrime(number)
          ? "$number adalah bilangan prima"
          : "$number bukan bilangan prima";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Bilangan Prima'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan angka',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    number = int.tryParse(value) ?? 0;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: checkPrime,
                child: Text('Cek Bilangan Prima',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(height: 20),
              Text(
                result,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Beranda()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Beranda',
              backgroundColor: Colors.deepPurpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Cek Prima',
              backgroundColor: Colors.deepPurpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              backgroundColor: Colors.deepPurpleAccent),
        ],
      ),
    );
  }
}
