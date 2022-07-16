import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/ui/pages/home.dart';
import 'package:latihan_bloc/ui/pages/home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: HomePage1(),
      ),
    );
  }
}


// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class CounterCubit extends Cubit<int> {
//   CounterCubit({this.inisialData = 0}) : super(inisialData);
//   int inisialData;
//   // int? current;
//   // int? next;

//   void tambahData() {
//     emit(state + 1); //yield package dari sananya/package bloc
//   }

//   void kurangData() {
//     emit(state - 1);
//   }
// //bloc punya fitur untuk kita bisa memantau suatu aplikasinya dengan materi
//   //Observer
//   //-perubahan (onChange)
//   // -error (on error)

//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//     // current = change.currentState; //untuk mau ditampilkan diwidget
//     // next = change.nextState;
//   }
// //bloc juga punya untuk mengecek error
//   @override
//   void onError(Object error, StackTrace stackTrace) {
//     super.onError(error, stackTrace);
//     print(error);
//   }
// }

// class HomePage extends StatelessWidget {
//   CounterCubit mycounter = CounterCubit(inisialData: 0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Cubit Apps"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           StreamBuilder(
//               initialData: mycounter.inisialData,
//               stream: mycounter.stream,
//               builder: (context, snapshot) {
//                 return Center(
//                   child: Text(
//                     "${snapshot.data}",
//                     style: const TextStyle(
//                       fontSize: 50,
//                     ),
//                   ),
//                 );
//               }),
//           const SizedBox(height: 20),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             IconButton(
//               onPressed: () {
//                 mycounter.kurangData();
//               },
//               icon: const Icon(Icons.remove),
//             ),
//             IconButton(
//               onPressed: () {
//                 mycounter.tambahData();
//               },
//               icon: const Icon(Icons.add),
//             ),
//           ])
//         ],
//       ),
//     );
//   }
// }
