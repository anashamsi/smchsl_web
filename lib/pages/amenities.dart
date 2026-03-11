import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Amenities extends StatelessComponent {
  const Amenities({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'amenities-section', classes: 'w-full bg-[#f8fafc] py-16 scroll-mt-20', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        h2(classes: 'text-4xl font-bold text-[#1a2b4b] text-center mb-12', [
          text("Amenities"),
        ]),

        div(classes: 'relative px-4', [
          // LEFT ARROW (Inline JS used to avoid build errors)
          button(
            attributes: {
              'onclick': "document.getElementById('scroll-container').scrollBy({left: -380, behavior: 'smooth'})"
            },
            classes:
                'absolute left-[-10px] md:left-[-20px] top-1/2 -translate-y-1/2 z-30 bg-[#4CAF50] hover:bg-[#45a049] text-white p-3 rounded-full shadow-xl transition-all cursor-pointer hidden md:block',
            [text("<")],
          ),

          // SCROLL CONTAINER
          div(
            id: 'scroll-container',
            classes: 'flex gap-6 overflow-x-auto pb-4 snap-x snap-mandatory no-scrollbar scroll-smooth',
            [
              _amenityCard(
                image: 'images/slide1.png',
                title: 'School',
                desc: 'Schools and Education, Primary schools, secondary schools, and possibly colleges or vocational training centers.',
              ),
              _amenityCard(
                image: 'images/slide2.jpg',
                title: 'Mosques',
                desc: 'Our serene mosque provides a peaceful sanctuary for prayers, fostering a harmonious and inclusive community.',
              ),
              _amenityCard(
                image: 'images/slide3.png',
                title: 'Shopping Mall',
                desc: 'Shopping Centers, Malls, markets, or local stores for shopping needs.',
              ),
              _amenityCard(
                image: 'images/slide2.jpg',
                title: 'Community Center',
                desc: 'A vibrant space for community gatherings, events, and shared activities.',
              ),
            ],
          ),

          // RIGHT ARROW (Inline JS used here too)
          button(
            attributes: {
              'onclick': "document.getElementById('scroll-container').scrollBy({left: 380, behavior: 'smooth'})"
            },
            classes:
                'absolute right-[-10px] md:right-[-20px] top-1/2 -translate-y-1/2 z-30 bg-[#4CAF50] hover:bg-[#45a049] text-white p-3 rounded-full shadow-xl transition-all cursor-pointer hidden md:block',
            [text(">")],
          ),
        ]),
      ]),
    ]);
  }

  Component _amenityCard({required String image, required String title, required String desc}) {
    return div(
      classes: 'min-w-[85%] md:min-w-[360px] bg-white rounded-2xl overflow-hidden shadow-md snap-center border border-gray-100',
      [
        div(classes: 'h-60 w-full', [
          img(src: image, classes: 'w-full h-full object-cover', alt: title),
        ]),
        div(classes: 'p-6', [
          h3(classes: 'text-xl font-bold text-gray-800 mb-3', [text(title)]),
          p(classes: 'text-gray-500 text-sm leading-relaxed', [text(desc)]),
        ]),
      ],
    );
  }
}