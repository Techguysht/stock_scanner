import 'package:get/get.dart';
import 'package:stock_scanner/scanner_screen.dart';

appRoutes() => [
      GetPage(
        name: '/scanner',
        page: () => ScannerScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      /*GetPage(
        name: '/main_screen',
        page: () => const MainScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/pdf_viewer',
        page: () => PDFViewer(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),*/
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
