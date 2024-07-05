part of 'internet_bloc.dart';

class InternetState extends Equatable {
  final bool isConnected;
  const InternetState({this.isConnected = true});
  InternetState copywith({bool ?isConnected}) {
    return InternetState(
      isConnected: isConnected ?? this.isConnected
    );
  }

  @override
  List<Object> get props => [isConnected];
}
