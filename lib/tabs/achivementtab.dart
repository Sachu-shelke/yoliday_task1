
import 'package:flutter/cupertino.dart';

class AchievementTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AchievementTabState();
}

class _AchievementTabState extends State<AchievementTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Center(child: Text("Achievements"))],
    );
  }
}