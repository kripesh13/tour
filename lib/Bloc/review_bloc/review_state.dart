part of 'review_bloc.dart';



class ReviewState extends Equatable {
  final ReviewModel? reviewModel;
  final ApiResponse<ReviewModel> reviewResponse ;

   ReviewState({
    this.reviewModel,
    required this.reviewResponse ,
  });

  ReviewState copyWith({
    ReviewModel? reviewModel,
    ApiResponse<ReviewModel>? reviewResponse,
  }) {
    return ReviewState(
      reviewModel: reviewModel ?? this.reviewModel,
      reviewResponse: reviewResponse ?? this.reviewResponse,
    );
  }

  @override
  List<Object?> get props => [reviewModel, reviewResponse];
}
