import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeState { light, dark }

// تعريف Cubit لإدارة الثيم
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.light);

  void toggleTheme() {
    emit(state == ThemeState.light ? ThemeState.dark : ThemeState.light);
  }
}
