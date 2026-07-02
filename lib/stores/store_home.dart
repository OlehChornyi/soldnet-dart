import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/utils/home_tab.dart';

part 'store_home.g.dart';
part 'store_home.freezed.dart';

@freezed
abstract class StoreHomeModel with _$StoreHomeModel {
  const factory StoreHomeModel({
    required HomeTab tab,
  }) = _StoreHomeModel;
}

@Riverpod(keepAlive: true)
class StoreHome extends _$StoreHome {
  @override
  StoreHomeModel build() => StoreHomeModel(tab: HomeTab.sections);

  void setTab(HomeTab tab) {
    state = state.copyWith(tab: tab);
  }
}
