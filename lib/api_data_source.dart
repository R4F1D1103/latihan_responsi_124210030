import 'base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();
  Future<Map<String, dynamic>> loadNews() {
    return BaseNetwork.get("articles");
  }
  Future<Map<String, dynamic>> loadBlogs() {
    return BaseNetwork.get("blogs");
  }
  Future<Map<String, dynamic>> loadReports() {
    return BaseNetwork.get("reports");
  }

  Future<Map<String, dynamic>> loadDetailBlogs(int blogId){
    String id = blogId.toString();
    return BaseNetwork.get("blogs/$id");
  }
  Future<Map<String, dynamic>> loadDetailNews(int newId){
    String id = newId.toString();
    return BaseNetwork.get("articles/$id");
  }
  Future<Map<String, dynamic>> loadDetailReports(int reportId){
    String id = reportId.toString();
    return BaseNetwork.get("reports/$id");
  }
}