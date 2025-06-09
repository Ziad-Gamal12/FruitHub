import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Models/ReviewsModel.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';

part 'reviews_state.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  ReviewsCubit({required this.productsrepo}) : super(ReviewsInitial());
  final Productsrepo productsrepo;

  void addReview({required Productsentity product}) async {
    emit(AddReviewLoading());
    List<Map<String, dynamic>> reviews = product.reviews!.map((e) {
      return Reviewmodel.fromEntity(entity: e).toJson();
    }).toList();
    final result = await productsrepo.updateProduct(
        data: reviews, field: "reviews", productCode: product.code);
    result.fold((failure) {
      emit(AddReviewFailure(errMessage: failure.message));
    }, (success) {
      emit(AddReviewSuccess());
    });
  }

  double getproductStarRate({required Productsentity product}) {
    int ratings = 0;
    if (product.reviews!.isEmpty) return 0.0;
    for (var review in product.reviews!) {
      ratings += (review.reating.round());
    }
    return (ratings / product.reviews!.length);
  }

  double calculateOverallReviewPercentage(List<int> reviewsRatings) {
    if (reviewsRatings.isEmpty) return 0;

    int total = reviewsRatings.reduce((a, b) => a + b);
    double average = total / reviewsRatings.length;

    return (average / 5.0) * 100;
  }
}
