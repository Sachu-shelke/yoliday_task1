
import 'package:flutter/cupertino.dart';

class SavedTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SavedTabState();
}

class _SavedTabState extends State<SavedTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Center(child: Text("Saved"))],
    );
  }
}