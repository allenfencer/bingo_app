import 'package:application1/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:application1/presentation/dashboard_one_screen/binding/dashboard_one_binding.dart';
import 'package:application1/presentation/slash_screen/slash_screen.dart';
import 'package:application1/presentation/slash_screen/binding/slash_binding.dart';
import 'package:application1/presentation/registration_screen/registration_screen.dart';
import 'package:application1/presentation/registration_screen/binding/registration_binding.dart';
import 'package:application1/presentation/login_one_screen/login_one_screen.dart';
import 'package:application1/presentation/login_one_screen/binding/login_one_binding.dart';
import 'package:application1/presentation/chech_in_three_screen/chech_in_three_screen.dart';
import 'package:application1/presentation/chech_in_three_screen/binding/chech_in_three_binding.dart';
import 'package:application1/presentation/chech_in_four_screen/chech_in_four_screen.dart';
import 'package:application1/presentation/chech_in_four_screen/binding/chech_in_four_binding.dart';
import 'package:application1/presentation/forget_password_one_screen/forget_password_one_screen.dart';
import 'package:application1/presentation/forget_password_one_screen/binding/forget_password_one_binding.dart';
import 'package:application1/presentation/chech_in_five_screen/chech_in_five_screen.dart';
import 'package:application1/presentation/chech_in_five_screen/binding/chech_in_five_binding.dart';
import 'package:application1/presentation/admin_pannel_screen/admin_pannel_screen.dart';
import 'package:application1/presentation/admin_pannel_screen/binding/admin_pannel_binding.dart';
import 'package:application1/presentation/login_screen/login_screen.dart';
import 'package:application1/presentation/login_screen/binding/login_binding.dart';
import 'package:application1/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:application1/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:application1/presentation/chech_in_one_screen/chech_in_one_screen.dart';
import 'package:application1/presentation/chech_in_one_screen/binding/chech_in_one_binding.dart';
import 'package:application1/presentation/chech_in_two_screen/chech_in_two_screen.dart';
import 'package:application1/presentation/chech_in_two_screen/binding/chech_in_two_binding.dart';
import 'package:application1/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:application1/presentation/forget_password_screen/binding/forget_password_binding.dart';
import 'package:application1/presentation/chech_in_screen/chech_in_screen.dart';
import 'package:application1/presentation/chech_in_screen/binding/chech_in_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String dashboardOneScreen = '/dashboard_one_screen';

  static String slashScreen = '/slash_screen';

  static String registrationScreen = '/registration_screen';

  static String loginOneScreen = '/login_one_screen';

  static String chechInThreeScreen = '/chech_in_three_screen';

  static String chechInFourScreen = '/chech_in_four_screen';

  static String forgetPasswordOneScreen = '/forget_password_one_screen';

  static String chechInFiveScreen = '/chech_in_five_screen';

  static String adminPannelScreen = '/admin_pannel_screen';

  static String loginScreen = '/login_screen';

  static String dashboardScreen = '/dashboard_screen';

  static String chechInOneScreen = '/chech_in_one_screen';

  static String chechInTwoScreen = '/chech_in_two_screen';

  static String forgetPasswordScreen = '/forget_password_screen';

  static String chechInScreen = '/chech_in_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardOneScreen,
      page: () => DashboardOneScreen(),
      bindings: [
        DashboardOneBinding(),
      ],
    ),
    GetPage(
      name: slashScreen,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: loginOneScreen,
      page: () => LoginOneScreen(),
      bindings: [
        LoginOneBinding(),
      ],
    ),
    GetPage(
      name: chechInThreeScreen,
      page: () => ChechInThreeScreen(),
      bindings: [
        ChechInThreeBinding(),
      ],
    ),
    GetPage(
      name: chechInFourScreen,
      page: () => ChechInFourScreen(),
      bindings: [
        ChechInFourBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordOneScreen,
      page: () => ForgetPasswordOneScreen(),
      bindings: [
        ForgetPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: chechInFiveScreen,
      page: () => ChechInFiveScreen(),
      bindings: [
        ChechInFiveBinding(),
      ],
    ),
    GetPage(
      name: adminPannelScreen,
      page: () => AdminPannelScreen(),
      bindings: [
        AdminPannelBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: chechInOneScreen,
      page: () => ChechInOneScreen(),
      bindings: [
        ChechInOneBinding(),
      ],
    ),
    GetPage(
      name: chechInTwoScreen,
      page: () => ChechInTwoScreen(),
      bindings: [
        ChechInTwoBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: chechInScreen,
      page: () => ChechInScreen(),
      bindings: [
        ChechInBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DashboardOneScreen(),
      bindings: [
        DashboardOneBinding(),
      ],
    )
  ];
}
