import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/models/utils/home_tab.dart';

part 'store_home.g.dart';
part 'store_home.freezed.dart';

@freezed
abstract class StoreHomeModel with _$StoreHomeModel {
  const factory StoreHomeModel({
    required HomeTab tab,
    HomeSection? selectedSection,
  }) = _StoreHomeModel;
}

@Riverpod(keepAlive: true)
class StoreHome extends _$StoreHome {
  @override
  StoreHomeModel build() =>
      StoreHomeModel(tab: HomeTab.sections, selectedSection: null);

  void setTab(HomeTab tab) {
    state = state.copyWith(tab: tab);
  }

  void setSelectedSection(HomeSection section) {
    state = state.copyWith(selectedSection: section);
  }
}
