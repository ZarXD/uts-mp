import 'package:flutter/material.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({super.key});

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  final List<Map<String, dynamic>> Items = [
    {
      "kode_produk": "PRD-001",
      "deskripsi": "Good Day Freeze",
      "harga": 15000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/001.jpg",
    },
    {
      "kode_produk": "PRD-002",
      "deskripsi": "Kapal Api",
      "harga": 20000,
      "stok": 6,
      "rating": 4.7,
      "gambar": "gambar/002.jpg",
    },
    {
      "kode_produk": "PRD-003",
      "deskripsi": "Torabika Coffee",
      "harga": 21000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/003.jpg",
    },
    {
      "kode_produk": "PRD-004",
      "deskripsi": "Pikopi ",
      "harga": 13000,
      "stok": 5,
      "rating": 4.4,
      "gambar": "gambar/004.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
          
        ],
      ),
      body: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Items[index]['deskripsi']),
                    Text(Items[index]['rating'].toString()),
                  ],
                ),
                subtitle: Text("Rp"+Items[index]['harga'].toString()),
              ),
            ),
          );
        },
      ),

      // body: Padding(
      //   padding: const EdgeInsets.only(top: 20),
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 60,
      //         decoration: BoxDecoration(
      //           color: Colors.grey,
      //           borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(15),
      //             bottomRight: Radius.circular(15),
      //           ),
      //         ),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Container(
      //               width: 50,
      //               height: 50,
      //               decoration: BoxDecoration(
      //                 image: DecorationImage(
      //                   image: AssetImage("gambar/Logo.png"),
      //                 ),
      //               ),
      //             ),
      //             Text(
      //               "LKS MART",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.blueGrey,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       ListView.builder(
      //         itemBuilder: (context, index) {
      //           return Column(
      //             children: [
      //               Container(
      //                 width: double.infinity,
      //                 height: 100,
      //                 decoration: BoxDecoration(color: Colors.grey),
      //                 child: Column(
      //                   children: [
      //                     ListTile(title: Text(Items[index]['deskripsi'])),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      // body: ListView.builder(
      //   itemCount: Items.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         Container(
      //           width: 200,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.grey
      //           ),
      //         ),
      //         Container(
      //           width: double.infinity,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.grey
      //           ),
      //           child: Column(
      //             children: [
      //               ListTile(
      //                 title: Text(Items[index]['deskripsi']),
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
