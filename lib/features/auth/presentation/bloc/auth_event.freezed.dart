// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckSession value)?  checkSession,TResult Function( Login value)?  login,TResult Function( Register value)?  register,TResult Function( LoginWithGoogle value)?  loginWithGoogle,TResult Function( Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckSession() when checkSession != null:
return checkSession(_that);case Login() when login != null:
return login(_that);case Register() when register != null:
return register(_that);case LoginWithGoogle() when loginWithGoogle != null:
return loginWithGoogle(_that);case Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckSession value)  checkSession,required TResult Function( Login value)  login,required TResult Function( Register value)  register,required TResult Function( LoginWithGoogle value)  loginWithGoogle,required TResult Function( Logout value)  logout,}){
final _that = this;
switch (_that) {
case CheckSession():
return checkSession(_that);case Login():
return login(_that);case Register():
return register(_that);case LoginWithGoogle():
return loginWithGoogle(_that);case Logout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckSession value)?  checkSession,TResult? Function( Login value)?  login,TResult? Function( Register value)?  register,TResult? Function( LoginWithGoogle value)?  loginWithGoogle,TResult? Function( Logout value)?  logout,}){
final _that = this;
switch (_that) {
case CheckSession() when checkSession != null:
return checkSession(_that);case Login() when login != null:
return login(_that);case Register() when register != null:
return register(_that);case LoginWithGoogle() when loginWithGoogle != null:
return loginWithGoogle(_that);case Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkSession,TResult Function( String email,  String password)?  login,TResult Function( String name,  String email,  String password)?  register,TResult Function()?  loginWithGoogle,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckSession() when checkSession != null:
return checkSession();case Login() when login != null:
return login(_that.email,_that.password);case Register() when register != null:
return register(_that.name,_that.email,_that.password);case LoginWithGoogle() when loginWithGoogle != null:
return loginWithGoogle();case Logout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkSession,required TResult Function( String email,  String password)  login,required TResult Function( String name,  String email,  String password)  register,required TResult Function()  loginWithGoogle,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case CheckSession():
return checkSession();case Login():
return login(_that.email,_that.password);case Register():
return register(_that.name,_that.email,_that.password);case LoginWithGoogle():
return loginWithGoogle();case Logout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkSession,TResult? Function( String email,  String password)?  login,TResult? Function( String name,  String email,  String password)?  register,TResult? Function()?  loginWithGoogle,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case CheckSession() when checkSession != null:
return checkSession();case Login() when login != null:
return login(_that.email,_that.password);case Register() when register != null:
return register(_that.name,_that.email,_that.password);case LoginWithGoogle() when loginWithGoogle != null:
return loginWithGoogle();case Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class CheckSession implements AuthEvent {
  const CheckSession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckSession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkSession()';
}


}




/// @nodoc


class Login implements AuthEvent {
  const Login({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCopyWith<Login> get copyWith => _$LoginCopyWithImpl<Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Login&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) _then) = _$LoginCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._self, this._then);

  final Login _self;
  final $Res Function(Login) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(Login(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Register implements AuthEvent {
  const Register({required this.name, required this.email, required this.password});
  

 final  String name;
 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCopyWith<Register> get copyWith => _$RegisterCopyWithImpl<Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Register&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'AuthEvent.register(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) _then) = _$RegisterCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class _$RegisterCopyWithImpl<$Res>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._self, this._then);

  final Register _self;
  final $Res Function(Register) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(Register(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginWithGoogle implements AuthEvent {
  const LoginWithGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.loginWithGoogle()';
}


}




/// @nodoc


class Logout implements AuthEvent {
  const Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




// dart format on
