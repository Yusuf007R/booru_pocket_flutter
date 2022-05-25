part of 'query_params_cubit.dart';

@freezed
class QueryParamsCubitState with _$QueryParamsCubitState {
  const factory QueryParamsCubitState(
      {required QueryParams queryParams,
      @Default("") String strictTag}) = _QueryParamsCubitState;
}
