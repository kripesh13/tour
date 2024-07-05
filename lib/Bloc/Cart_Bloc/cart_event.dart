part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}


class LoadCart extends CartEvent {
  @override
  List<Object> get props => [];
}


class AddItem extends CartEvent {
  final CartDetails item;

  const AddItem(this.item);

  @override
  List<Object> get props => [item];
}

class RemoveItem extends CartEvent {
  final CartDetails item;

  const RemoveItem(this.item);

  @override
  List<Object> get props => [item];
}

class UpdateQuantity extends CartEvent {
  final CartDetails item;
  final int quantity;

  const UpdateQuantity(this.item, this.quantity);

  @override
  List<Object> get props => [item, quantity];
}