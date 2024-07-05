part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<CartDetails> items;
  final int totalPrice;
  final String error;
  ApiResponse apiResponse;
  CartState(
      {required this.items,
      this.totalPrice = 0,
      this.error = '',
      required this.apiResponse});
  CartState copyWith(
      {List<CartDetails>? items,
      int? totalPrice,
      String? error,
      ApiResponse? apiResponse}) {
    return CartState(
        apiResponse: apiResponse ?? this.apiResponse,
        items: items ?? this.items,
        totalPrice: totalPrice ?? this.totalPrice,
        error: error ?? this.error);
  }

  @override
  List<Object> get props => [items, totalPrice, error, apiResponse];
}
