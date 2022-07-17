import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/other/other.dart';
import 'package:latihan_bloc/ui/widgets/merah.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Counter mycounter = BlocProvider.of<Counter>(context);
    Counter mycounter = context.read<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("DEPENDENCY INJECTION"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: mycounter,
                child: const OtherPage(),
              ),
              // BlocProvider(
              //     create: (context) => mycounter,
              //     child: const OtherPage()),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  //decrement
                  mycounter.decrement();
                },
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Merah(),
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  //increment
                  mycounter.increment();
                },
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
