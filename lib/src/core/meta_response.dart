import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_response.g.dart';
part 'meta_response.freezed.dart';

@freezed
class MetaResponse with _$MetaResponse {
  factory MetaResponse({
    @JsonKey(name: "current_page") final int? currentPage,
    @JsonKey(name: "per_page") final int? perPage,
    @JsonKey(name: "total") final int? total,
    @JsonKey(name: "last_page") final int? lastPage,
  }) = _MetaResponse;

  factory MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaResponseFromJson(json);
}
