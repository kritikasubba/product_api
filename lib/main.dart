// import 'package:flutter/material.dart';
// import 'package:product_api/model/product.dart';

// void main() =>
// runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Future <List<Products>>? futureData;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     futureData = fetchData();

//   }
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(appBar: AppBar(
//         title: Text('Product Api'),

//       ),
//       body: Column(
//         children: [
//           FutureBuilder <List<Products>> (
//             future: futureData,
//             builder: (context, snapshot)  {
//               if(snapshot.hasData) {
//                 List<Products>? data = snapshot.data;
//                 return ListView.builder(
//                   itemCount: data!.length,
//                   itemBuilder: (context, index) => 
//                      Container(
//                       height: 75,
//                       color: Colors.white,
//                       child: Center(child: Text(data[index].price.toString()),),
//                     ),

//               );
              
//               }
//               else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }
//               return CircularProgressIndicator();
//             }
            


//        ) ],
//       ),
//       ),
      
//     );
    
//   }
// }