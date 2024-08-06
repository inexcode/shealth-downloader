import 'package:shealth_downloader/repository/stress_repository.dart';

void main(final List<String> arguments) async {
  print('Getting stress data');
  await StressRepository().load();
}
