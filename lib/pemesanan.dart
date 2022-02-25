import 'package:flutter/material.dart';
import 'bandara.dart';

class Pemesanan extends StatefulWidget {
  @override
  _PemesananState createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesawat"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Dari",
                  icon: Icon(Icons.local_airport),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Surabaya(SBY)';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Ke",
                  icon: Icon(Icons.local_airport),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Jakarta(JKT)';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Tanggal Pemberangkatan",
                  icon: Icon(Icons.date_range),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Jumat,25 Febuari 2022';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Penumpang",
                  icon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return '3 Dewasa 1 Anak - Anak';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Kelas Penerbangan",
                  icon: Icon(Icons.ac_unit),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ekonomi';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 500,
                child: RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    initialRoute:
                    '/';
                    routes:
                    <String, WidgetBuilder>{
                      '/Cari': (context) => ListBandara(),
                    };
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
