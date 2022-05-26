import 'package:bloc/bloc.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/queryparams/queryparams.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_params_cubit_state.dart';
part 'query_params_cubit.freezed.dart';

class QueryParamsCubit extends Cubit<QueryParamsCubitState> {
  SettingsCubit settingsCubit;

  QueryParamsCubit(
      {String strictTag = '',
      required QueryParams queryParams,
      required this.settingsCubit})
      : super(QueryParamsCubitState(
            queryParams: queryParams, strictTag: strictTag));

  void updateQueryParams(QueryParams queryParams) {
    emit(state.copyWith(queryParams: queryParams));
  }

  void incrementPage() {
    emit(state.copyWith(
        queryParams:
            state.queryParams.copyWith(page: state.queryParams.page + 1)));
  }

  void resetPage() {
    emit(state.copyWith(queryParams: state.queryParams.copyWith(page: 1)));
  }

  Map<String, dynamic> get queryParams {
    final params = state.queryParams;
    final Map<String, dynamic> json = {};
    if (params is PostParams) {
      json.addAll(state.queryParams.toJson());
      json['limit'] = settingsCubit.state.pageLimit;
      final rating = settingsCubit.state.rating;
      if (rating != PostRating.all && rating != PostRating.unknown) {
        json['tags'] = '${json['tags']} rating:${rating.name}'.trim();
      }
      if (state.strictTag != '') {
        json['tags'] = '${json['tags']} ${state.strictTag}'.trim();
      }
    }
    return json;
  }
}
