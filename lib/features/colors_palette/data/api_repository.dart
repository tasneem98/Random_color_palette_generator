import '/features/colors_palette/data/api_service.dart';
import 'models/generated_palette.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository(this.apiService);

  Future<GeneratedPalette> getColors() async {
    final result = await apiService.fetchColors();

    return result;
  }
}
