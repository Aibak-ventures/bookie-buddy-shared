// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_product_filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceProductFilterEntity {

 List<String> get categories;// TODO(marketplace): unverified — the `subcategories`, `fabrics` and
// `models` filters are not in the documented request body yet.
 List<String> get subcategories; List<String> get fabrics; List<String> get models; List<String> get colors; bool? get isPremium; double? get minPrice; double? get maxPrice; String? get search; MarketplaceSortBy? get sortBy; bool get showSellingPrice;
/// Create a copy of MarketplaceProductFilterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceProductFilterEntityCopyWith<MarketplaceProductFilterEntity> get copyWith => _$MarketplaceProductFilterEntityCopyWithImpl<MarketplaceProductFilterEntity>(this as MarketplaceProductFilterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceProductFilterEntity&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.subcategories, subcategories)&&const DeepCollectionEquality().equals(other.fabrics, fabrics)&&const DeepCollectionEquality().equals(other.models, models)&&const DeepCollectionEquality().equals(other.colors, colors)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.search, search) || other.search == search)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(subcategories),const DeepCollectionEquality().hash(fabrics),const DeepCollectionEquality().hash(models),const DeepCollectionEquality().hash(colors),isPremium,minPrice,maxPrice,search,sortBy,showSellingPrice);

@override
String toString() {
  return 'MarketplaceProductFilterEntity(categories: $categories, subcategories: $subcategories, fabrics: $fabrics, models: $models, colors: $colors, isPremium: $isPremium, minPrice: $minPrice, maxPrice: $maxPrice, search: $search, sortBy: $sortBy, showSellingPrice: $showSellingPrice)';
}


}

/// @nodoc
abstract mixin class $MarketplaceProductFilterEntityCopyWith<$Res>  {
  factory $MarketplaceProductFilterEntityCopyWith(MarketplaceProductFilterEntity value, $Res Function(MarketplaceProductFilterEntity) _then) = _$MarketplaceProductFilterEntityCopyWithImpl;
@useResult
$Res call({
 List<String> categories, List<String> subcategories, List<String> fabrics, List<String> models, List<String> colors, bool? isPremium, double? minPrice, double? maxPrice, String? search, MarketplaceSortBy? sortBy, bool showSellingPrice
});




}
/// @nodoc
class _$MarketplaceProductFilterEntityCopyWithImpl<$Res>
    implements $MarketplaceProductFilterEntityCopyWith<$Res> {
  _$MarketplaceProductFilterEntityCopyWithImpl(this._self, this._then);

  final MarketplaceProductFilterEntity _self;
  final $Res Function(MarketplaceProductFilterEntity) _then;

/// Create a copy of MarketplaceProductFilterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? subcategories = null,Object? fabrics = null,Object? models = null,Object? colors = null,Object? isPremium = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? search = freezed,Object? sortBy = freezed,Object? showSellingPrice = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,subcategories: null == subcategories ? _self.subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<String>,fabrics: null == fabrics ? _self.fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<String>,models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<String>,colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as MarketplaceSortBy?,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceProductFilterEntity].
extension MarketplaceProductFilterEntityPatterns on MarketplaceProductFilterEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceProductFilterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceProductFilterEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceProductFilterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> categories,  List<String> subcategories,  List<String> fabrics,  List<String> models,  List<String> colors,  bool? isPremium,  double? minPrice,  double? maxPrice,  String? search,  MarketplaceSortBy? sortBy,  bool showSellingPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity() when $default != null:
return $default(_that.categories,_that.subcategories,_that.fabrics,_that.models,_that.colors,_that.isPremium,_that.minPrice,_that.maxPrice,_that.search,_that.sortBy,_that.showSellingPrice);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> categories,  List<String> subcategories,  List<String> fabrics,  List<String> models,  List<String> colors,  bool? isPremium,  double? minPrice,  double? maxPrice,  String? search,  MarketplaceSortBy? sortBy,  bool showSellingPrice)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity():
return $default(_that.categories,_that.subcategories,_that.fabrics,_that.models,_that.colors,_that.isPremium,_that.minPrice,_that.maxPrice,_that.search,_that.sortBy,_that.showSellingPrice);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> categories,  List<String> subcategories,  List<String> fabrics,  List<String> models,  List<String> colors,  bool? isPremium,  double? minPrice,  double? maxPrice,  String? search,  MarketplaceSortBy? sortBy,  bool showSellingPrice)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductFilterEntity() when $default != null:
return $default(_that.categories,_that.subcategories,_that.fabrics,_that.models,_that.colors,_that.isPremium,_that.minPrice,_that.maxPrice,_that.search,_that.sortBy,_that.showSellingPrice);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceProductFilterEntity implements MarketplaceProductFilterEntity {
  const _MarketplaceProductFilterEntity({final  List<String> categories = const [], final  List<String> subcategories = const [], final  List<String> fabrics = const [], final  List<String> models = const [], final  List<String> colors = const [], this.isPremium, this.minPrice, this.maxPrice, this.search, this.sortBy, this.showSellingPrice = true}): _categories = categories,_subcategories = subcategories,_fabrics = fabrics,_models = models,_colors = colors;
  

 final  List<String> _categories;
@override@JsonKey() List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

// TODO(marketplace): unverified — the `subcategories`, `fabrics` and
// `models` filters are not in the documented request body yet.
 final  List<String> _subcategories;
// TODO(marketplace): unverified — the `subcategories`, `fabrics` and
// `models` filters are not in the documented request body yet.
@override@JsonKey() List<String> get subcategories {
  if (_subcategories is EqualUnmodifiableListView) return _subcategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subcategories);
}

 final  List<String> _fabrics;
@override@JsonKey() List<String> get fabrics {
  if (_fabrics is EqualUnmodifiableListView) return _fabrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fabrics);
}

 final  List<String> _models;
@override@JsonKey() List<String> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}

 final  List<String> _colors;
@override@JsonKey() List<String> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

@override final  bool? isPremium;
@override final  double? minPrice;
@override final  double? maxPrice;
@override final  String? search;
@override final  MarketplaceSortBy? sortBy;
@override@JsonKey() final  bool showSellingPrice;

/// Create a copy of MarketplaceProductFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceProductFilterEntityCopyWith<_MarketplaceProductFilterEntity> get copyWith => __$MarketplaceProductFilterEntityCopyWithImpl<_MarketplaceProductFilterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceProductFilterEntity&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._subcategories, _subcategories)&&const DeepCollectionEquality().equals(other._fabrics, _fabrics)&&const DeepCollectionEquality().equals(other._models, _models)&&const DeepCollectionEquality().equals(other._colors, _colors)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.search, search) || other.search == search)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_subcategories),const DeepCollectionEquality().hash(_fabrics),const DeepCollectionEquality().hash(_models),const DeepCollectionEquality().hash(_colors),isPremium,minPrice,maxPrice,search,sortBy,showSellingPrice);

@override
String toString() {
  return 'MarketplaceProductFilterEntity(categories: $categories, subcategories: $subcategories, fabrics: $fabrics, models: $models, colors: $colors, isPremium: $isPremium, minPrice: $minPrice, maxPrice: $maxPrice, search: $search, sortBy: $sortBy, showSellingPrice: $showSellingPrice)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceProductFilterEntityCopyWith<$Res> implements $MarketplaceProductFilterEntityCopyWith<$Res> {
  factory _$MarketplaceProductFilterEntityCopyWith(_MarketplaceProductFilterEntity value, $Res Function(_MarketplaceProductFilterEntity) _then) = __$MarketplaceProductFilterEntityCopyWithImpl;
@override @useResult
$Res call({
 List<String> categories, List<String> subcategories, List<String> fabrics, List<String> models, List<String> colors, bool? isPremium, double? minPrice, double? maxPrice, String? search, MarketplaceSortBy? sortBy, bool showSellingPrice
});




}
/// @nodoc
class __$MarketplaceProductFilterEntityCopyWithImpl<$Res>
    implements _$MarketplaceProductFilterEntityCopyWith<$Res> {
  __$MarketplaceProductFilterEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceProductFilterEntity _self;
  final $Res Function(_MarketplaceProductFilterEntity) _then;

/// Create a copy of MarketplaceProductFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? subcategories = null,Object? fabrics = null,Object? models = null,Object? colors = null,Object? isPremium = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? search = freezed,Object? sortBy = freezed,Object? showSellingPrice = null,}) {
  return _then(_MarketplaceProductFilterEntity(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,subcategories: null == subcategories ? _self._subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<String>,fabrics: null == fabrics ? _self._fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<String>,models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<String>,colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as MarketplaceSortBy?,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
