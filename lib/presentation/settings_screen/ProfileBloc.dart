import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class ProfileEvent {}

class UpdateProfileName extends ProfileEvent {
  final String newName;
  UpdateProfileName(this.newName);
}

// States
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileUpdated extends ProfileState {
  final String newName;
  ProfileUpdated(this.newName);
}

// Bloc
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String _profileName = "Saranya";

  ProfileBloc() : super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is UpdateProfileName) {
      _profileName = event.newName;
      yield ProfileUpdated(_profileName);
    }
  }
}
