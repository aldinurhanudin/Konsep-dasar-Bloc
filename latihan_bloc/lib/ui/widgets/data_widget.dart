import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class DataWidget extends StatelessWidget {
  DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Counter mycounter = BlocProvider.of<Counter>(context);
    Counter mycounter = context.read<Counter>();
    return BlocBuilder(
      bloc: mycounter,
      builder: (context, state) => Text(
        "$state",
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
