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

  static String categoryQuestionsCheck(int id) {
    return '/dormitories/orders/categories/$id/questions/check';
  }
}
