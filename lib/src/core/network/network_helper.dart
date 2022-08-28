mixin EndPoints {
  static const baseUrl = 'https://dev.api.narxozapp.kz/v1/mobile';

  // help section
  static const helpSections = '/dormitories/help-sections';

  // orders folder
  static const dormitoriesInfo = '/dormitories/information';
  static const dormitoriesOrdersDegree = '/dormitories/orders/degrees';

  static String educationCategories(int id) {
    return '$dormitoriesOrdersDegree/$id/categories';
  }

  static String categoryQuestions(int id) {
    return '/dormitories/orders/categories/$id/questions';
  }

  // deleted
  // static String categoryQuestionsCheck(int id) {
  //   return '/dormitories/orders/categories/$id/questions/check';
  // }

  static String dormPlacements(int id) {
    return '/dormitories/orders/categories/$id/placements';
  }

  static String checkApplication(int orderId) {
    return '/dormitories/orders/$orderId/check';
  }

  static String paymentDorm(int orderId) {
    return '/dormitories/orders/$orderId/pay';
  }

  static String createApplication(int id) {
    return '/dormitories/orders/categories/$id'; // post
  }

  static const login = '/auth/login';
  static const profile = '/user/account/profile';
  static const logout = '/user/logout';
}
