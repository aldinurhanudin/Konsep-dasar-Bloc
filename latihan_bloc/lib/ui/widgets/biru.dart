import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/ui/widgets/center_data.dart';

class Biru extends StatelessWidget {
  const Biru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      child: CenterData(),
    );
  }
}
