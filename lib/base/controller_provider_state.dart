import 'package:flutter/material.dart';
import 'package:flutter_clean_project/base/base_controller.dart';
import 'package:provider/provider.dart';

abstract class ControllerProviderState<T extends StatefulWidget,
    T2 extends BaseController> extends State<T> {
  @protected
  Widget content(BuildContext context);

  @protected
  T2 bindController(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Provider<T2>(
      create: bindController,
      child: content(context),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
