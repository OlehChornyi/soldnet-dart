import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/search_param.dart';
import 'package:soldnet/services/api/requests/request_user_all_get.dart';
import 'package:soldnet/services/api/requests/request_user_search.dart';

part 'store_search.g.dart';
part 'store_search.freezed.dart';

@freezed
abstract class StoreSearchModel with _$StoreSearchModel {
  const factory StoreSearchModel({
    required List<User> users,
    required List<String> usersAlreadyAddedToSingleChats,
    required User? selectedUser,
    required SearchParam? selectedParam,
  }) = _StoreSearchModel;
}

@Riverpod(keepAlive: true)
class StoreSearch extends _$StoreSearch {
  @override
  StoreSearchModel build() => StoreSearchModel(
      users: [],
      usersAlreadyAddedToSingleChats: [],
      selectedUser: null,
      selectedParam: null);

  void setSelectedUser(User user) {
    state = state.copyWith(selectedUser: user);
  }

  Future<void> getAllUsers() async {
    //TODO: change this into pagination 20+
    final response = await ref.read(requestUserAllGetProvider.future);
    state = state.copyWith(users: response.users ?? []);
  }

  void setUsersAlreadyAddedToSingleChats(List<String> ids) {
    state = state.copyWith(usersAlreadyAddedToSingleChats: ids);
  }

  void setSelectedParam(SearchParam param) {
    if (param == SearchParam.none) {
      state = state.copyWith(selectedParam: null);
      getAllUsers();
    } else {
      state = state.copyWith(selectedParam: param);
    }
  }

  Future<void> getUsersWithQuery(String keyWord) async {
    final query = state.selectedParam == null
        ? ''
        : '?searchBy=${state.selectedParam!.name}&keyword=$keyWord';

    final response =
        await ref.read(requestUserSearchProvider(query: query).future);

    state = state.copyWith(users: response.users ?? []);
  }
}
