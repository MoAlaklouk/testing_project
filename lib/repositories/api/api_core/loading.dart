import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

/// start loading spinner
startLoading() {
  SmartDialog.showLoading(
    builder: (context) => const CircularProgressIndicator(
      strokeWidth: 5,
      valueColor: AlwaysStoppedAnimation(Colors.orange),
    ),
  );
}

// stop loading spinner
dismissLoading() {
  SmartDialog.dismiss();
}

class MyBuildCondition extends StatelessWidget {
  final bool? condition;

  final WidgetBuilder? builder;

  MyBuildCondition({
    Key? key,
    this.condition,
    this.builder,
  })  : assert(condition != null),
        assert(builder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => condition != null && condition == true
      ? builder!(context)
      : startLoading();
}
