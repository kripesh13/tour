import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../Models/services/network_response/api_response.dart';
import '../../data/cart/cart_box.dart';
import '../../data/cart/cart_details.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(items: [], apiResponse: ApiResponse.loading())) {
    on<LoadCart>(_onLoadCart);
    on<AddItem>(_onAddItem);
    on<RemoveItem>(_onRemoveItem);
    on<UpdateQuantity>(_onUpdateQuantity);
  }

  void _onLoadCart(LoadCart event, Emitter<CartState> emit) {
    try {
      var box = CartBoxes.getData();
      var items = box.values.toList().cast<CartDetails>();
      int totalPrice = items.fold(0, (previousValue, cart) {
        int priceInt = int.tryParse(cart.price!) ?? 0;
        return previousValue + (priceInt * (cart.quantity ?? 0));
      });
      emit(state.copyWith(totalPrice: totalPrice));
      emit(state.copyWith(apiResponse: ApiResponse.completed(items)));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  void _onAddItem(AddItem event, Emitter<CartState> emit) {
    try {
      var box = CartBoxes.getData();
      box.add(event.item);
      add(LoadCart());
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  void _onRemoveItem(RemoveItem event, Emitter<CartState> emit) {
    try {
      event.item.delete();
      add(LoadCart());
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  void _onUpdateQuantity(UpdateQuantity event, Emitter<CartState> emit) {
    try {
      event.item.quantity = event.quantity;
      event.item.save();
      add(LoadCart());
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
