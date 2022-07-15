import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.inisialData = 0}) : super(inisialData);
  int inisialData;

  void tambahData() {
    emit(state + 1); //yield package dari sananya/package bloc
  }

  void kurangData() {
    emit(state - 1);
  }
}

class HomePage extends StatelessWidget {
  CounterCubit mycounter = CounterCubit(inisialData: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Apps"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: mycounter.inisialData,
              stream: mycounter.stream,
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                );
              }),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
              onPressed: () {
                mycounter.kurangData();
              },
              icon: const Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                mycounter.tambahData();
              },
              icon: const Icon(Icons.add),
            ),
          ])
        ],
      ),
    );
  }
}
