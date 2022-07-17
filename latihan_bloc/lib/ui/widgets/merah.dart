import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/ui/widgets/kuning.dart';

class Merah extends StatelessWidget {
  const Merah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Kuning(),
    );
  }
}
