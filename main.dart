import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final apiUrl =
        "http://localhost/latihan_api/api.php"; // Ganti dengan URL API PHP Anda

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final ready = json.decode(response.body);
      setState(() {
        data = List<Map<String, dynamic>>.from(ready);
        print(data);
      });
    } else {
      print("Gagal mengambil data dari API.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TOKO FURNITURE KEFAS'),
        ),
        body: Center(
          child: data.isNotEmpty
              ? ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: ListTile(
                        leading: Image.network(
                          item["gambar"],
                          width: 250,
                          height: 250,
                        ),
                        title: Text(
                          item["nm_barang"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(LatihanApi());
// }



// class LatihanApi extends StatefulWidget {
//   const LatihanApi({super.key});

//   @override
//   State<LatihanApi> createState() => _LatihanApiState();
// }

// class _LatihanApiState extends State<LatihanApi> {
//   var data = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final apiUrl =
//         "http://localhost/latihan_api/api.php"; // Ganti dengan URL API PHP Anda

//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       final ready = json.decode(response.body);
//       data.addAll(ready);
//       // print(data);
//       // print(data[0]["gambar"]);
//       // setState(() {
//       //   data = List<Map<String, dynamic>>.from(ready);
//       //   print(data);
//       // });
//     } else {
//       print("Gagal mengambil data dari API.");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan API Kefas"),
//           centerTitle: true,
//         ),
//         body: Center(
//             child: data.isNotEmpty
//                 ? ListView.builder(
//                     itemCount: data.length,
//                     itemBuilder: (context, index) {
//                       final productItem = data[index];
//                       print(productItem);
//                       return ListTile(
//                         contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
//                         focusColor: Colors.amber,
//                         leading: Container(
//                           decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               border: Border.all(
//                                   width: 1,
//                                   color: Colors.black,
//                                   style: BorderStyle.solid)),
//                           margin: EdgeInsets.fromLTRB(2, 5, 2, 0),
//                           height: 100,
//                           width: 100,
//                           child: Image.network(
//                             productItem['gambar'],
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         title: Text(
//                           productItem['nm_barang'],
//                           style: TextStyle(fontSize: 15),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         subtitle: Text(
//                           productItem['stok'],
//                           style: TextStyle(fontSize: 15),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       );
//                     })
//                 : CircularProgressIndicator()),
//       ),
//     );
//   }
// }

// // class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {
// //   List<Map<String, dynamic>> data = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchData();
// //   }

// //   Future<void> fetchData() async {
// //     final apiUrl =
// //         "http://localhost/latihan_api/api.php"; // Ganti dengan URL API PHP Anda

// //     final response = await http.get(Uri.parse(apiUrl));

// //     if (response.statusCode == 200) {
// //       final ready = json.decode(response.body);
// //       setState(() {
// //         data = List<Map<String, dynamic>>.from(ready);
// //         print(data);
// //       });
// //     } else {
// //       print("Gagal mengambil data dari API.");
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('LATIHAN API KEFAS'),
// //         ),
// //         body: Center(
// //           child: data.isNotEmpty
// //               ? ListView.builder(
// //                   itemCount: data.length,
// //                   itemBuilder: (context, index) {
// //                     final item = data[index];
// //                     return Column(
// //                       children: <Widget>[
// //                         Image.network(item["gambar"]),
// //                         Text(item[
// //                             "nm_barang"]), // Ganti dengan nama kolom yang sesuai
// //                         // Tambahkan tampilan lainnya sesuai kebutuhan
// //                       ],
// //                     );
// //                   },
// //                 )
// //               : CircularProgressIndicator(),
// //         ),
// //       ),
// //     );
// //   }
// // }
