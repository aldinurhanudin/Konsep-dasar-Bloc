import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/ui/widgets/data_widget.dart';

class CenterData extends StatelessWidget {
  const CenterData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataWidget(),
    );
  }
}
