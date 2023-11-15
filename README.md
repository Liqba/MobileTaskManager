# task_manager

### Muhammad Iqbal - 2206082152
<details>
<summary>TUGAS 1</summary>

## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

* statefull widget adalah widget yang bisa berubah tampilan jika user berinteraksi dengannya. contoh dari stateless widget adalah CheckBox, Radio, Slider, Inkwell, Form, dan TextField. statefull widget merupakan subclass dari StatefulWidget

* stateless widget tidak dapat berubah, contohnya seperti Icon, IconButton.

state dari widget disimpan dalam objek State. state berisi nilai yang dapat dirubah seperti slider, current value, dan lainnya. ketika widget state berubah objek memanggil fungsi setState(). [sumber](https://docs.flutter.dev/ui/interactivity#:~:text=to%20Managing%20state.-,Stateful%20and%20stateless%20widgets,are%20examples%20of%20stateless%20widgets.)

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. `MaterialApp`: berguna untuk mengatur tema dan konfigurasi awal aplikasi
2. `Scaffold`: mengatur kerangka tampilan aplikasi dengan AppBar dan body
3. `Appbar`: menampilkan bar atas aplikasi
4. `SingleChildScrollView`:  mengelilingi konten agar dapat di scroll
5. `Padding`: digunakan untuk memberikan padding ke dalam widget lainnya
6. `Column`: mengatur child agar vertikal
7. `Text`: untuk menampilkan text
8. `GridView.Count` : menampilkan elemen-elemen dalam grid dengan jumlah kolom tetap
9. `ShopCard`: menampilkan kartu toko dengan ikon dan teks.
10. `Material`: memberikan latar belakang kartu dengan warna tertentu
11. `InkWell`:  untuk membuat area yang responsif terhadap sentuhan
12. `SnackBar`: untuk menampilkan pesan sementara ketika salah satu kartu toko diklik


## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. membuat proyek flutter baru bernama task_manager, menggunakan command:
`flutter create task_manager`
2. membuat file menu.dart
3. merapikan file main.dart
* menambahkan `import 'package:flutter/material.dart';`  dan `import 'package:task_manager/menu.dart';`
* menghapus baris 
```
class MyHomePage ... {
    ...
}

class _MyHomePageState ... {
    ...
}
```
*   
4. merubah material color pada main.dart
`colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),`
5. merubah sifat widget halaman menu menjadi stateless:
* ubah `home: const MyHomePage(title: 'Flutter Demo Home Page'),` menjadi `MyHomePage()`

6. mendefinisikan kelas ShopItem
7. menambahkan list berisi objek ShopItem
8. menambahkan widget scaffold dalam widget build
9. membuat widget stateless baru yaitu ShopCard
</details>


<details> 
<summary>TUGAS 2</summary>

## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
 
## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
 
## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)


</details>