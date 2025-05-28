part of 'user_cubit.dart';

@immutable
sealed class UserState {}
final class UserInitial extends UserState {}
final class UserLoading extends UserState {}
final class UserSuccess extends UserState {}
final class UserFaileur extends UserState {
  final String message;
  UserFaileur(this.message);
}