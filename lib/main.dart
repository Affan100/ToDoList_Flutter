// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_app/app/data/services/storage/services.dart';
import 'package:learn_app/app/modules/home/binding.dart';
import 'package:learn_app/app/modules/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'dataMock.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(()=> StorageService().init());
  runApp(MyApp());
}

///StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const List<int> colorCode = <int>[200,300,400,500,600];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter ToDoList',
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     leading: const Icon(Icons.menu),
      //     title: const Center(child: Text("Flutter Learn App")),
      //     actions: const [Icon(Icons.settings)],
      //   ),
      //   body: SafeArea(
      //     child: Container(
      //       // color: Colors.blueAccent,
      //       child: ListView.separated(
      //         padding: EdgeInsets.all(16),
      //         // shrinkWrap: true,
      //         itemCount: dataFromMock.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return ListTile(
      //             leading: Image.network(dataFromMock[index]['url']!),
      //             title: Text(dataFromMock[index]['name']!, style: const TextStyle(color: Colors.blueAccent, fontSize: 20)),
      //             subtitle: Text(dataFromMock[index]['age']!),
      //           );
      //         },
      //         separatorBuilder: (BuildContext context, int index) {
      //           return const Divider();
      //         },
      //       ),
      //     ),
      //     // child: GridView.count(
      //     //   crossAxisCount: 2,
      //     //   mainAxisSpacing: 10,
      //     //   crossAxisSpacing: 10,
      //     //   childAspectRatio: 2,
      //     //   children: [
      //     //     Container(
      //     //       color: Colors.amber[100],
      //     //     ),
      //     //     Container(
      //     //       color: Colors.amber[200],
      //     //     ),
      //     //     Container(
      //     //       color: Colors.amber[300],
      //     //     ),
      //     //     Container(
      //     //       color: Colors.amber[400],
      //     //     )
      //     //   ],
      //     // ),
      //     // child: Center(child: _stack()),
      //   ),
      // ),
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }

  // Widget _stack() {
  //   return Stack(
  //     children: <Widget>[
  //       Container(
  //         width: 100,
  //         height: 100,
  //         color: Colors.red,
  //       )
  //     ],
  //   );
  // }
}

///StatefulWidget
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() {
//     return _MyAppState();
//   }
// }
// class _MyAppState extends State<MyApp> {
//   int count = 0;
//   @override
//   void initState(){
//     super.initState();
//     //get External Data
//     _getCountStartup().then((value)=> print('Async finished'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('$count', style: const TextStyle(fontSize: 32, color: Colors.blueAccent),),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       count++;
//                     });
//                   },
//                   child: const Text('Increase'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Future _getCountStartup() async{
//     await Future.delayed(Duration(seconds: 2));
//   }
// }
