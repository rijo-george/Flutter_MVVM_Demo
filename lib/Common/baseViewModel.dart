import 'package:flutter_mvvm/Common/baseModel.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseViewModel<T extends BaseModel> {
  final fetcher = PublishSubject<T>();

  dispose() {
    fetcher.close();
  }
}