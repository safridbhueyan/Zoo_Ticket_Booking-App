part of 'part_of_import.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.splashScreen,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.homeScreen,
                pageBuilder: (context, state) {
                  return buildPageWithTransition(
                    context: context,
                    state: state,
                    transitionType: PageTransitionType.fade,
                    child: HomeScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.mapScreen,
                pageBuilder: (context, state) {
                  return buildPageWithTransition(
                    context: context,
                    state: state,
                    transitionType: PageTransitionType.fade,
                    child: MapScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.ticketScreen,
                pageBuilder: (context, state) {
                  return buildPageWithTransition(
                    context: context,
                    state: state,
                    transitionType: PageTransitionType.fade,
                    child: TicketScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.profileScreen,
                pageBuilder: (context, state) {
                  return buildPageWithTransition(
                    context: context,
                    state: state,
                    transitionType: PageTransitionType.fade,
                    child: ProfileScreen(),
                  );
                },
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        name: RouteName.splashScreen,
        path: RouteName.splashScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),

      GoRoute(
        name: RouteName.signInScreen,
        path: RouteName.signInScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SignInScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.animalsListScreen,
        path: RouteName.animalsListScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: AnimalsListScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.forgotPasswordScreen,
        path: RouteName.forgotPasswordScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: ForgotPasswordScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.createNewPasswordScreen,
        path: RouteName.createNewPasswordScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: CreateNewPasswordScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.generalAdmissionScreen,
        path: RouteName.generalAdmissionScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: GeneralAdmissionScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.signUpScreen,
        path: RouteName.signUpScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SignUpScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.profileInfoScreen,
        path: RouteName.profileInfoScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: ProfileInfoScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.birthdayScreen,
        path: RouteName.birthdayScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: BirthdayScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.manageNotifications,
        path: RouteName.manageNotifications,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: ManageNotifications(),
          );
        },
      ),
      GoRoute(
        name: RouteName.fieldtripScreen,
        path: RouteName.fieldtripScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: FieldtripScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.paymentDetails,
        path: RouteName.paymentDetails,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: PaymentDetailsScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.faqScreen,
        path: RouteName.faqScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: FaqScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.packageDetailScreen,
        path: RouteName.packageDetailScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: PackageDetailScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.myBookings,
        path: RouteName.myBookings,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            //transitionType: PageTransitionType.slideRightToLeft,
            child: MyBookings(),
          );
        },
      ),
    ],
  );
}
