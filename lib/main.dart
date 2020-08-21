import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'menggunakan navigasi route',
    initialRoute: '/',
    routes: {
      '/': (context) => HalamanPertama(),
      '/kedua': (context) => HalamanKedua(),
    },
  ));
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pertama'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('ke halaman kedua'),
            onPressed: () {
              Navigator.pushNamed(context, '/kedua'); // metode for route /kedua
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amberAccent,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.pushNamed(context, '/kedua');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('ke halaman pertama'),
            // if button pressed then anonym metod to the halaman pertama

            onPressed: () {
              Navigator.pop(context); // default metode for route '/'
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
