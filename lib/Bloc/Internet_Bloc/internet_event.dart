part of 'internet_bloc.dart';

sealed class InternetEvent extends Equatable {
  const InternetEvent();

  @override
  List<Object> get props => [];
}

class OnCheckInternetEvent extends InternetEvent {
  bool ?isConnected;
  OnCheckInternetEvent({this.isConnected});
}
