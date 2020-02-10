import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

abstract class BaseService {
  @mustCallSuper
  BaseService() {
    _registerAsSingleton();
  }

  void _registerAsSingleton() => GetIt.instance
      .registerSingleton(this, instanceName: '${this.runtimeType}');

  @protected
  @visibleForOverriding
  void dispose();
}
