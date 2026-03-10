import 'dart:async';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  Timer? _timer;

  final List<String> images = [
    'images/slide1.png',
    'images/slide2.jpg',
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void goToSlide(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'relative w-full h-[520px] md:h-[650px] overflow-hidden bg-gray-900',
      [
        /// BACKGROUND IMAGE
        div(
          classes: 'absolute inset-0 transition-all duration-1000 ease-in-out bg-cover bg-center',
          styles: Styles(
            backgroundImage: ImageStyle.url(images[currentIndex]),
          ),
          [],
        ),

        /// DARK OVERLAY
        div(
          classes: 'absolute inset-0 bg-black/50',
          [],
        ),

        /// CONTENT
        div(
          classes: 'relative z-10 flex flex-col items-center justify-center h-full text-center px-6',
          [
            h1(
              classes: 'text-4xl md:text-6xl font-bold text-white mb-6 drop-shadow-lg',
              [text('Shamsi Mercantile')],
            ),
            p(
              classes: 'text-lg md:text-2xl font-bold text-gray-200 mb-8 max-w-2xl',
              [text('Co-operative Housing Society Ltd.')],
            ),
            p(
              classes: 'text-lg md:text-xl text-gray-200 mb-8 max-w-2xl',
              [text('SMCHSL has top location as it is surrounded by all modern amenities')],
            ),
            div(
              classes: 'flex gap-4',
              [
                a(
                  href: '#',
                  classes: 'bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-8 rounded-lg transition-all',
                  [text('Download Our Mobile App')],
                ),
              ],
            ),
          ],
        ),

        /// INDICATORS
        div(
          classes: 'absolute bottom-6 left-1/2 -translate-x-1/2 flex gap-3 z-20',
          [
            for (var i = 0; i < images.length; i++)
              div(
                classes:
                    'h-2 w-8 cursor-pointer rounded-full transition-all ${i == currentIndex ? 'bg-white' : 'bg-white/40'}',
                events: {
                  'click': (_) => goToSlide(i),
                },
                [],
              ),
          ],
        ),
      ],
    );
  }
}
