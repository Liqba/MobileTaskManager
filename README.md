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

* Navigator.push() digunakan untuk menambah rute baru kedalam stack navigasi. setiap kali Navigator.push() dipanggil rute baru ditambahkan ke stack navigasi. jika kita ingin balik lagi ke rute sebelumnya kita dapat menggunakan Navigator.pop(). contoh penggunaaan .push() adalah ketika kita memiliki beberapa halaman, seperti halaman detail dan halaman edit.  kita mungkin ingin kembali ke halaman detail setelah menekan tombol back pada halaman edit.
* Navigator.pushReplacement() mirip dengan Navigator.push() yaitu menambah rute baru ke stack navigasi. pebedaannya Navigator.pushReplacement() mengganti rute saat ini dengan rute baru. sehingga jika kita menggunakan Navigator.pop() kita tidak akan kembali ke rute sebelum pemanggilan Navigator.pushReplacement(). Misalnya, jika kita memiliki aplikasi dengan beberapa halaman seperti Halaman Login, Halaman Dashboard, dan Halaman Register, kita mungkin ingin menggunakan Navigator.pushReplacement() saat berpindah dari Halaman Login ke Halaman Dashboard atau Halaman Register. Dengan ini, pengguna tidak akan dapat kembali ke Halaman Login dengan menekan tombol back


## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
* Container: membungkus widget lain dan memberikan padding, margin, dan decoration seperti border dan background color.
* Column dan Row: menata widget lain secara vertikal (Column) atau horizontal (Row).
* Stack: menata widget-widget sehingga dapat ditempatkan di mana saja dalam ruang tersedia.
* ListView dan GridView: menampilkan daftar atau grid dari item.
* Card: menampilkan konten yang memiliki efek shadow dan border.
* Drawer: menampilkan menu navigasi yang dapat disembunyikan dan ditampilkan dengan geser.
* Scaffold: kerangka dasar dari aplikasi Flutter yang mencakup struktur dasar seperti AppBar, BottomNavigationBar, dan Drawer.

## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

elemen input yang saya gunakaan yaitu TextFormField untuk "Nama task", "deadline", dan "Deskripsi". 
Alasan menggunakan TextFormField adalah karena TextFormField memungkinkan untuk memvalidasi input pengguna. 
* di input nama task TextFormField memvalidasi apakah input pengguna kosong atau tidak. Jika input kosong, mengembalikan pesan error "Nama tidak boleh kosong!".
* di deadline TextFormField memvalidasi apakah input pengguna kosong atau tidak, dan apakah input pengguna berupa angka atau tidak. Jika input kosong, mengembalikan pesan error "deadline tidak boleh kosong!". Jika input bukan angka, mengembalikan pesan error "deadline harus berupa angka!".
* di Deskripsi TextFormField memvalidasi apakah input pengguna kosong atau tidak. Jika input kosong, mengembalikan pesan error "Deskripsi tidak boleh kosong!".

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean architecture adalah pendekatan dalam pengembangan software yang menekankan pada pemisahan antara komponen-komponen dalam aplikasi. Dalam konteks Flutter, ini mencakup pemisahan antara widget, state, dan business logic.
Widget: bertanggung jawab untuk menggambar UI dan menangani interaksi pengguna.
State: mencakup data yang dapat berubah sepanjang hidup widget.
Business Logic: mencakup logika bisnis dan interaksi dengan database atau API.
Dengan pendekatan ini, setiap komponen memiliki tanggung jawabnya sendiri dan tidak saling tergantung satu sama lain, sehingga membuat kode lebih mudah untuk dipahami, dikelola, dan diuji.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1. widget drawer yang berada di kiri halaman.
2. menambahkan widget drawer ke tiap halaman.
3. routing tombol yang ada di widget drawer ke halaman yang sesuai. seperti berikut:;
```
onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
        builder: (context) => MyHomePage(),
        ));
},
```
4. Buat halaman tasklist_form.dart untuk formulir tambah item baru.
5. Menamabahkan elemen input untuk name, amount, dan description.
6. Menambahkan tombol Save.
7. Validasi setiap elemen input agar tidak boleh kosong dan harus berisi data dengan tipe data yang sesuai.
8. routing tombol tambah task di halaman menu ke halaman tasklist_form.dart 

</details>

<details> 
<summary>TUGAS 3</summary>

</details>
