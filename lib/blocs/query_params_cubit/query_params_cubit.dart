import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_params_cubit_state.dart';
part 'query_params_cubit.freezed.dart';

class QueryParamsCubit extends Cubit<QueryParamsCubitState> {
  QueryParamsCubit({required QueryParams queryParams})
      : super(QueryParamsCubitState(queryParams: queryParams));

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

  void updateLimit(int limit) {
    emit(state.copyWith(queryParams: state.queryParams.copyWith(limit: limit)));
  }
}
