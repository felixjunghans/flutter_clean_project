import 'package:flutter/material.dart';
import 'package:flutter_clean_project/base/base_controller.dart';
import 'package:provider/provider.dart';

/// ControllerConsumerState<T>
///
/// Consumes the Provider<T> of the current Context
abstract class ControllerConsumerState<T extends StatefulWidget,
    T2 extends BaseController> extends State<T> {
  T2 get controller => Provider.of<T2>(context);

  @override
  void initState() {
    super.initState();

    postInit(() {
      T2 _controller = Provider.of<T2>(context);
      init(_controller);
    });
  }

  @protected
  void init(T2 controller);

  @protected
  Widget builder(BuildContext context, T2 controller, Widget child);

  Widget build(BuildContext context) {
    return Consumer<T2>(
      builder: builder,
    );
  }
}

extension StateExtension<T extends StatefulWidget> on State<T> {
  Stream<bool> waitForStateLoading() async* {
    while (!mounted) {
      yield false;
    }
    yield true;
  }

  Future<void> postInit(VoidCallback action) async {
    await for (bool isLoaded in waitForStateLoading()) {}
    action();
  }
}
