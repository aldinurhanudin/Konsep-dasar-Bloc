import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/ui/widgets/biru.dart';

class Kuning extends StatelessWidget {
  const Kuning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.amber,
      child: Biru(),
    );
  }
}
