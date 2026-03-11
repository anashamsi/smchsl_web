import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Gallery extends StatelessComponent {
  const Gallery({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'gallery-section', classes: 'w-full bg-[#f9fafb] py-16 scroll-mt-20', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // --- SECTION HEADER ---
        div(classes: 'text-center mb-12', [
          h2(classes: 'text-4xl font-bold text-[#262261] mb-4', [text("Society Updates")]),
          p(classes: 'text-gray-500 max-w-xl mx-auto', [
            text("Explore official society documents, registrations, trademarks, and latest alerts for members."),
          ]),
        ]),

        // --- SCROLLABLE CARDS ---
        div(classes: 'relative', [
          // LEFT NAVIGATION
          button(
            attributes: {
              'onclick': "document.getElementById('gallery-container').scrollBy({left: -320, behavior: 'smooth'})",
            },
            classes:
                'absolute left-[-10px] top-1/2 -translate-y-1/2 z-30 bg-white/90 hover:bg-[#F7941E] hover:text-white text-gray-800 p-3 rounded-full shadow-lg transition-all hidden md:block border border-gray-100 cursor-pointer',
            [text("←")],
          ),

          // CARDS CONTAINER
          div(
            id: 'gallery-container',
            classes: 'flex gap-5 overflow-x-auto pb-8 snap-x no-scrollbar scroll-smooth',
            [
              _galleryCard(
                image: 'images/registrationcertificate.jpg',
                tag: 'Certificate',
                title: 'Society Registration',
              ),
              _galleryCard(
                image: 'images/fbrcertificate.jpg',
                tag: 'Certificate',
                title: 'FBR Certificate',
              ),
              _galleryCard(
                image: 'images/trademark.jpg',
                tag: 'Certificate',
                title: 'Trademark Certificate',
              ),
              _galleryCard(
                image: 'images/copyrights.jpg',
                tag: 'Certificate',
                title: 'Certificate of Copyrights',
              ),
            ],
          ),

          // RIGHT NAVIGATION
          button(
            attributes: {
              'onclick': "document.getElementById('gallery-container').scrollBy({left: 320, behavior: 'smooth'})",
            },
            classes:
                'absolute right-[-10px] top-1/2 -translate-y-1/2 z-30 bg-white/90 hover:bg-[#F7941E] hover:text-white text-gray-800 p-3 rounded-full shadow-lg transition-all hidden md:block border border-gray-100 cursor-pointer',
            [text("→")],
          ),
        ]),
      ]),
    ]);
  }

  // --- HELPER FUNCTION ---
  Component _galleryCard({required String image, required String tag, required String title}) {
    return div(
      classes:
          'min-w-[260px] md:min-w-[300px] aspect-[2/3] relative rounded-xl overflow-hidden shadow-md snap-start group bg-gray-100',
      [
        img(
          src: image,
          classes: 'w-full h-full object-cover transition-transform duration-700 group-hover:scale-105',
          alt: tag,
        ),
        div(classes: 'absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-80', []),
        div(classes: 'absolute bottom-4 left-4', [
          span(
            classes:
                'bg-[#F7941E] text-white text-[10px] uppercase tracking-widest px-2 py-1 rounded mb-2 inline-block',
            [text(tag)],
          ),
          h3(classes: 'text-white font-medium text-lg', [text(title)]),
        ]),
      ],
    );
  }
}
