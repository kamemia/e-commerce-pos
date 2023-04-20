import 'package:commerce/firebase_options.dart';
import 'package:commerce/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:commerce/src/features/core/screens/cart/cart_screen.dart';
import 'package:commerce/src/features/core/screens/cart/catalogue_screen.dart';
import 'package:commerce/src/features/core/screens/customer/customer_screen.dart';
import 'package:commerce/src/features/core/screens/customer/view_customers.dart';
import 'package:commerce/src/features/core/screens/discount/discount_screen.dart';
import 'package:commerce/src/features/core/screens/product/product_screen.dart';
import 'package:commerce/src/features/core/screens/product/view_products.dart';
import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:commerce/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const App());
// }
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
      routes: {
        '/Sales': (context) => const CartScreen(),
        '/Products': (context) => const ProductScreen(),
        '/Discount': (context) => const DiscountScreen(),
        '/Customer': (context) => const CustomerScreen(),
        '/Invoice': (context) => const CatalogScreen(),
        '/SalesList': (context) => const ViewProducts(),
        '/Paid': (context) => const ViewCustomers(),
      },
    );
  }
}
