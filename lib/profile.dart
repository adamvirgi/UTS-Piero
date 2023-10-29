import 'package:flutter/material.dart';
import 'package:ro_uts_flut/dashboard.dart';


void main() {
  runApp(profile());
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pierfot.jpeg'), // Ganti dengan path gambar profil Anda
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Afrizal Piero',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'muchammadpiero@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Alamat: jl Puspanjolo Selatan ',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Nomor Telepon: 081990494938',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 35,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    child: ElevatedButton(
                      onPressed: (){
                       Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => dashboard(),
                    )
                  );
                      }, 
                      child: Text("Kembali ke Dashboard"),
                      ),
                  ),
          ],
        ),
      ),
    );
  }
}
