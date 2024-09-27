import 'package:flutter/material.dart';
import 'package:kuispam_124210022/lingkaran.dart';
import 'package:kuispam_124210022/prima_page.dart';
import 'package:kuispam_124210022/profile.dart';
import 'package:kuispam_124210022/layang.dart';
import 'package:kuispam_124210022/trapesium.dart';

class Beranda extends StatefulWidget {
  Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _currentIndex =
      0; // You need to declare this variable for the bottom navigation bar.
  final List<Widget> _screens = [
    Beranda(),
    Profile(),
    PrimaPage() // Add your PanduanAplikasi screen here
    // Add your Log Out screen here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrapesiumPage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://asset.kompas.com/crops/yXi9XRFFVBBRd22q4oYYxjVI8Io=/23x53:1748x1203/750x500/data/photo/2022/01/15/61e2a24016496.png"),
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    'Trapesium',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LayangLayangPage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://uptdsmpn3bangkalan.sch.id/wp-content/uploads/2024/01/layang-layang.jpg"),
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    'Layang-layang',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LingkaranPage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://rumuspintar.com/wp-content/uploads/2019/09/Luas-Lingkaran.jpg"),
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    'Lingkaran',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PrimaPage()),
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
