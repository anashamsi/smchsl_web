import 'dart:async';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smchsl_web/pages/about.dart';
import 'package:smchsl_web/pages/amenities.dart';
import 'package:smchsl_web/pages/features.dart';
import 'package:smchsl_web/pages/gallery.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Component build(BuildContext context) {
    return div(classes: 'w-full flex flex-col', [
      section(classes: 'relative w-full h-[520px] md:h-[650px] overflow-hidden bg-gray-900', [
        div(classes: 'absolute inset-0 w-full h-full', [
          div(classes: 'hidden md:block w-full h-full', [
            img(
              src: "images/slide1.png",
              alt: "Shamsi Mercantile",
              classes: 'w-full h-full object-fill',
            ),
          ]),
          div(classes: 'block md:hidden w-full h-full', [
            img(
              src: "images/slide3.png",
              alt: "Shamsi Mercantile",
              classes: 'w-full h-full object-fill',
            ),
          ]),
          div(classes: 'absolute inset-0 bg-black/40', []),
        ]),

        div(classes: 'relative z-10 flex flex-col items-center justify-center h-full text-center px-6', [
          h1(classes: 'text-4xl md:text-6xl font-bold text-white mb-6 drop-shadow-lg', [
            Component.text("Shamsi Mercantile"),
          ]),
          p(classes: 'text-lg md:text-2xl text-white mb-6 drop-shadow-lg', [
            Component.text("Co-operative Housing Society Ltd."),
          ]),
          p(classes: 'text-lg md:text-xl text-gray-200 mb-8 max-w-2xl', [
            Component.text("SMCHSL has top location as it is surrounded by all moden amenities"),
          ]),
          div(classes: 'flex gap-4', [
            a(
              href: "#",
              classes: 'bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-8 rounded-lg transition-all',
              [Component.text("Download our Mobile App")],
            ),
          ]),
        ]),
      ]),

      // ID added here for scrolling
      div(id: 'about-section', [
        About(),
      ]),
      div(id: 'features-section', [Features()]),
      div(id: 'amenities-section', [Amenities()]),
      div(id: 'gallery-section', [Gallery()]),
    ]);
  }
}
