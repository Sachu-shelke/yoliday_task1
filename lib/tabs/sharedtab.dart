

import 'package:flutter/cupertino.dart';

class SharedTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SharedTabState();
}

class _SharedTabState extends State<SharedTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Center(child: Text("Shared"))],
    );
  }
}
