import 'package:flutter_clean_project/base/base_controller.dart';
import 'package:flutter_clean_project/page_template/presenter/template_presenter.dart';

/// TemplateController
///
/// Controller for Template View
class TemplateController extends BaseController {
  TemplateController() : _templatePresenter = TemplatePresenter();

  /// Is used to communicate with certain services.
  TemplatePresenter _templatePresenter;

  @override
  void initListeners() {
    // TODO: implement initListeners
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
