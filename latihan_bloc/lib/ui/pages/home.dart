import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
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
              Merah(),
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
