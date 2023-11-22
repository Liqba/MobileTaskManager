import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

import 'package:money_manager_mobile/screens/detail_item.dart';
import 'package:money_manager_mobile/screens/tasklist_form.dart';
import 'package:money_manager_mobile/screens/login.dart';


class TaskItem {
  final String name;
  final IconData icon;

  TaskItem(this.name, this.icon);
}

class TaskCard extends StatelessWidget {
  final TaskItem item;

  const TaskCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();    
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsif terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
           if (item.name == "Tambah Transaksi") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormPage()));
           } else if (item.name == "Lihat Produk") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailPage()));
           } else if (item.name == "Logout") {
              final response = await request.logout(
                  "http://127.0.0.1:8000/auth/logout/");
              String message = response["message"];
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message"),
                ));
              }
            }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}