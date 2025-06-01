part of 'reviews_cubit.dart';

sealed class ReviewsState extends Equatable {
  const ReviewsState();

  @override
  List<Object> get props => [];
}

final class ReviewsInitial extends ReviewsState {}

final class AddReviewLoading extends ReviewsState {}

final class AddReviewSuccess extends ReviewsState {}

final class AddReviewFailure extends ReviewsState {
  final String errMessage;

  const AddReviewFailure({required this.errMessage});
}
