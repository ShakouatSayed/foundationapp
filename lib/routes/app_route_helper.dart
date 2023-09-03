import 'package:foundationapp/pages/blog_page/blog_page_detail_view.dart';
import 'package:foundationapp/pages/donate_page/donate_page.dart';
import 'package:foundationapp/pages/event_page/event_page_body.dart';
import 'package:foundationapp/pages/event_page/page_details_view.dart';
import 'package:foundationapp/pages/gallary_page/full_image_view.dart';
import 'package:foundationapp/pages/gallary_page/gallary_page.dart';
import 'package:foundationapp/pages/home/home_page.dart';
import 'package:foundationapp/pages/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initail = "/";
  static const String gallaryPage = "/gallaryPage";
  static const String homePage = "/initial";
  static const String eventPageDetail = "/eventPageDetail";
  static const String eventPage = "/eventPage";
  static const String blogPageDetail = "/blogDetailPage";
  static const String donatePage = "/donatePage";
  static const String fullImageView = "/fullImageView";

  static String getGallaryPage() => '$gallaryPage';
  static String getFullImageView() => '$fullImageView';
  static String getInitialPage() => '$initail';
  static String getHomePage() => '$homePage';
  static String getEventPageDetail() => '$eventPageDetail';
  static String getEventPage() => '$eventPage';
  static String getBlogDetailPage() => '$blogPageDetail';
  static String getDonatePage() => '$donatePage';

  static List<GetPage> routes() => [
        GetPage(name: initail, page: () => SplashScreen()),
        GetPage(name: homePage, page: () => HomePage()),
        GetPage(
            name: gallaryPage,
            page: () => GallaryPage(),
            // binding: BindingsBuilder(() {
            //   Get.lazyPut(() => FoundationImageController());
            // }),
            transition: Transition.fadeIn),
        GetPage(
            name: fullImageView,
            page: () => FullImageView(),
            transition: Transition.fade),
        GetPage(
          name: eventPageDetail,
          page: () {
            return PageDetailsView();
          },
        ),
        GetPage(name: eventPage, page: () => EventPageBody()),
        GetPage(name: blogPageDetail, page: () => BlogPageDetailPage()),
        GetPage(name: donatePage, page: () => DonatePage()),
        //GetPage(name: name, page: page)
      ];
}
