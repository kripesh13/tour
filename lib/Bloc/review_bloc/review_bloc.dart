import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tour_destiny/Models/API_Models/review_model/review_model.dart';
import 'package:tour_destiny/Models/Repository/review_repo.dart';
import 'package:tour_destiny/Models/Repository/user_repository.dart';
import 'package:tour_destiny/Models/services/network_response/api_response.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewRepo reviewRepo;

  ReviewBloc({required this.reviewRepo})
      : super(ReviewState(reviewResponse: ApiResponse.loading())) {
    on<LoadReviewEvent>((event, emit) async {
      await _loadReview(emit);
    });
  }

  Future<void> _loadReview(Emitter<ReviewState> emit) async {
    try {
      await reviewRepo.getUser().then((value) {
        emit(state.copyWith(
          reviewResponse: ApiResponse.completed(value),
        ));
      });
    } catch (error, stackTrace) {
      print(stackTrace);
      emit(state.copyWith(
        reviewResponse: ApiResponse.error(error.toString()),
      ));
    }
  }
}
