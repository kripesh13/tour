import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'internet_event.dart';
part 'internet_state.dart';
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription<InternetStatus>? _internetConnectionSubscription;

  InternetBloc() : super(const InternetState()) {
    on<OnCheckInternetEvent>(_onCheckInternetEvent);

    // Start listening for internet status changes
    _internetConnectionSubscription =
        InternetConnection().onStatusChange.listen((event) {
      print('Internet connection status: $event');
      switch (event) {
        case InternetStatus.connected:
          add(OnCheckInternetEvent(isConnected: true));
          break;
        case InternetStatus.disconnected:
          add(OnCheckInternetEvent(isConnected: false));
          break;
        default:
          add(OnCheckInternetEvent(isConnected: false));
          break;
      }
    });
  }

  void _onCheckInternetEvent(
      OnCheckInternetEvent event, Emitter<InternetState> emit) {
    emit(state.copywith(isConnected: event.isConnected));
    }

  @override
  Future<void> close() {
    _internetConnectionSubscription?.cancel();
    return super.close();
  }
}
