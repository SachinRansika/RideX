import 'package:flutter/material.dart';

import 'package:sachinxs/screens/OnBording.dart';

import '../loanx pages/Home.dart';

class Wrapper extends StatefulWidget {
  final bool showMainScreen;
  const Wrapper({
    super.key,
  required this.showMainScreen
  });

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return widget.showMainScreen
          ? Home()
        :  OnBording();
  }
}
