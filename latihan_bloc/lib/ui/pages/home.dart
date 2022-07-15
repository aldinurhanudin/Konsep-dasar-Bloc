import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class HomePage extends StatelessWidget {
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC BUILDER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
              bloc: mycounter,
              buildWhen: (previous, current) {
                if (current % 2 == 1) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              }),
          StreamBuilder(
              initialData: mycounter.init,
              stream: mycounter.stream,
              builder: (context, snapshot) {
                return Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              }),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    mycounter.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    mycounter.increment();
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}