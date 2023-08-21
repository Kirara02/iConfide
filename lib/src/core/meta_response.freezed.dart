// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaResponse _$MetaResponseFromJson(Map<String, dynamic> json) {
  return _MetaResponse.fromJson(json);
}

/// @nodoc
mixin _$MetaResponse {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaResponseCopyWith<MetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaResponseCopyWith<$Res> {
  factory $MetaResponseCopyWith(
          MetaResponse value, $Res Function(MetaResponse) then) =
      _$MetaResponseCopyWithImpl<$Res, MetaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "last_page") int? lastPage});
}

/// @nodoc
class _$MetaResponseCopyWithImpl<$Res, $Val extends MetaResponse>
    implements $MetaResponseCopyWith<$Res> {
  _$MetaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaResponseCopyWith<$Res>
    implements $MetaResponseCopyWith<$Res> {
  factory _$$_MetaResponseCopyWith(
          _$_MetaResponse value, $Res Function(_$_MetaResponse) then) =
      __$$_MetaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "last_page") int? lastPage});
}

/// @nodoc
class __$$_MetaResponseCopyWithImpl<$Res>
    extends _$MetaResponseCopyWithImpl<$Res, _$_MetaResponse>
    implements _$$_MetaResponseCopyWith<$Res> {
  __$$_MetaResponseCopyWithImpl(
      _$_MetaResponse _value, $Res Function(_$_MetaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$_MetaResponse(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaResponse implements _MetaResponse {
  _$_MetaResponse(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "last_page") this.lastPage});

  factory _$_MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MetaResponseFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;

  @override
  String toString() {
    return 'MetaResponse(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaResponse &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, perPage, total, lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaResponseCopyWith<_$_MetaResponse> get copyWith =>
      __$$_MetaResponseCopyWithImpl<_$_MetaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaResponseToJson(
      this,
    );
  }
}

abstract class _MetaResponse implements MetaResponse {
  factory _MetaResponse(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "total") final int? total,
      @JsonKey(name: "last_page") final int? lastPage}) = _$_MetaResponse;

  factory _MetaResponse.fromJson(Map<String, dynamic> json) =
      _$_MetaResponse.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$_MetaResponseCopyWith<_$_MetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
