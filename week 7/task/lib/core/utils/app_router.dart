import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/auth/ui/views/login_view.dart';
import 'package:task/features/auth/ui/views/register_view.dart';
import 'package:task/features/navBar/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:task/features/navBar/presentation/views/nav_bar.dart';
import 'package:task/features/onboarding/ui/views/onboarding_view.dart';

class AppRouter {
  static final welcomeView = '/welcomeview';
  static final loginView = '/loginview';
  static final registerView = '/registerview';
  static final emailVerifiedView = '/emailverifiedview';
  static final forgetPassword = '/forgetpassword';
  static final navBar = '/navBar';
  static final detailsview = '/detailsview';
  static final searchView = '/searchview';
  static GoRouter getRouter() {
    return GoRouter(
      initialLocation: welcomeView,
      routes: [
        GoRoute(
          path: welcomeView,
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(path: loginView, builder: (context, state) => LoginView()),
        GoRoute(
          path: registerView,
          builder: (context, state) => RegisterView(),
        ),

        GoRoute(
          path: navBar,
          builder:
              (context, state) => BlocProvider(
                create: (context) => NavbarCubit(),
                child: NavBar(),
              ),
        ),
      ],
    );
  }
}
