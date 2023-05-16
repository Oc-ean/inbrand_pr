import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inbrand_pr/screens/add_buttons_screens/add_post_screen.dart';
import 'package:inbrand_pr/screens/add_buttons_screens/add_product_screen.dart';
import 'package:inbrand_pr/screens/home_screen.dart';
import 'package:inbrand_pr/screens/job_section_screen.dart';
import 'package:inbrand_pr/screens/notifications_screen.dart';
import 'package:inbrand_pr/screens/video_section_screen.dart';
import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/icon_path.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController _pageController = PageController();
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  int _currentIndex = 0;

  bool heart = true;

  final List _pageList = [
    const HomeScreen(),
    const VideoSectionScreen(),
    const NotificationsScreen(),
    const JobSectionScreen(),
  ];
  final color = [
    const Color(0xFF9C2C77),
    const Color(0xFFCD104D),
    const Color(0xFFE14D2A),
    const Color(0xFFFD841F),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    int index;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return DefaultTabController(
      length: _pageList.length,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: secondPrimaryColor,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 17.0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("assets/png_icons/profile.png"),
            ),
          ),
          centerTitle: true,
          title: SvgPicture.asset(
            IconPath.brandIcon,
            height: 32,
          ),
          actions: [
            SvgPicture.asset(IconPath.searchIcon),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: ShaderMask(
                shaderCallback: (rect) => LinearGradient(
                        colors: color,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter)
                    .createShader(rect),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Fontisto.messenger,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        key: scaffoldKey, // app drawer that located on
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[_pageList[_currentIndex]],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            height: 43,
            child: SpeedDial(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              openCloseDial: isDialOpen,
              backgroundColor: primaryColor,
              overlayColor: Colors.grey,
              overlayOpacity: 0.5,
              spacing: 4,
              spaceBetweenChildren: 15,
              closeManually: false,
              children: [
                SpeedDialChild(
                  label: 'Add Video',
                  child: const Icon(Icons.ondemand_video_outlined),
                  onTap: () {},
                ),
                SpeedDialChild(
                    label: 'Add Post',
                    child: const Icon(Icons.image_outlined),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddPostScreen()));
                    }),
                SpeedDialChild(
                    child: const Icon(Icons.production_quantity_limits),
                    label: 'Add Product',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddProductScreen()));
                    }),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomAppBar(
          // color: Colors.white,
          height: 75,
          notchMargin: 5,
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(11)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  _pageController.jumpToPage(0);
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: SvgPicture.asset(
                  IconPath.home2Icon,
                  color: _currentIndex == 0 ? primaryColor : Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.jumpToPage(1);
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  color: _currentIndex == 1 ? primaryColor : Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.jumpToPage(2);
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                icon: SvgPicture.asset(
                  IconPath.favoriteIcon,
                  color: _currentIndex == 2 ? primaryColor : Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.jumpToPage(3);
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                icon: SvgPicture.asset(
                  IconPath.email2Icon,
                  color: _currentIndex == 3 ? primaryColor : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
