import '../pages/login/models/models.dart';
import '../pages/home/models/models.dart';
import 'main_state.dart';

class AppState {
  LoginState loginState;

  // 首页状态
  HomeState homeState;

  // 全局通用状态  【包括 loading、toast、环境、tabBar 等信息】
  MainState mainState;

  AppState({
    this.loginState,
    this.homeState,
    this.mainState,
  });

  static AppState initialState() => AppState(
        loginState: LoginState.initialState(),
        mainState: MainState.initialState(),
        homeState: HomeState.initialState(),
      );

  AppState copy({
    LoginState loginState,
    HomeState homeState,
    MainState mainState,
  }) =>
      AppState(
        mainState: mainState ?? this.mainState,
        homeState: homeState ?? this.homeState,
        loginState: loginState ?? this.loginState,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          loginState == other.loginState &&
          mainState == other.mainState &&
          homeState == other.homeState;

  @override
  int get hashCode =>
      loginState.hashCode ^
      mainState.hashCode ^
      homeState.hashCode ;
}
