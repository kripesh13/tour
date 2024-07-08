import 'package:tour_destiny/Models/API_Models/Get_User_Models/get_user_model.dart';
import 'package:tour_destiny/Models/API_Models/review_model/review_model.dart';
import 'package:tour_destiny/Models/services/network_service/base_api_services.dart';
import 'package:tour_destiny/Models/services/network_service/network_api_services.dart';

class ReviewRepo {
  BaseApiServices apiServices;
  ReviewRepo({required this.apiServices});

  Future getUser() async {
    try {
      var response = await apiServices
          .getApiResponseServices('/tours/5c88fa8cf4afda39709c2966/reviews');
      ReviewModel reviewModel = ReviewModel.fromJson(response);
      return reviewModel;
    } catch (e) {
      rethrow;
    }
  }
}
