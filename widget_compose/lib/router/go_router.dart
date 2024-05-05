import 'package:go_router/go_router.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/screen/home_screen.dart';
import 'package:widget_compose/screen/product_detail_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const MyHomePage();
      },
      routes: [
        GoRoute(
            path: 'detail',
            builder: (context, state) {
              return ProductDetailScreen(product: state.extra as ProductToDisplay,);
            }),
      ]),
]);
