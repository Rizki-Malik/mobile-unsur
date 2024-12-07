import 'package:aslab_travel/models/makanan_model.dart';
import 'package:aslab_travel/services/makanan_service.dart';
import 'package:aslab_travel/widgets/makanan_card.dart';
import 'package:flutter/material.dart';

class APISeafoodScreen extends StatelessWidget {
  final MakananService _makananService = MakananService();

  APISeafoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Daftar Makanan Seafood',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder<List<MakananModel>>(
        future: _makananService.fetchMakanan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error : ${snapshot.error}"));
          } else {
            final daftarSeaFood = snapshot.data!;
            return ListView.builder(
                itemCount: daftarSeaFood.length,
                itemBuilder: (context, index) {
                  return MakananCard(makananModel: daftarSeaFood[index]);
                });
          }
        },
      ),
    );
  }
}
