import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';

@client
class Header extends StatefulComponent {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isMenuOpen = false;

  final routes = [
    ('Home', '/'),
    ('About Us', '/#about-section'),
    ('Management', '/management'),
    ('Features', '/#features-section'),
    ('Gallery', '/#gallery-section'),
    ('Amenities', '/#amenities-section'),
    ('Contact', '/#footer-section'),
  ];

  @override
  Component build(BuildContext context) {
    final activePath = context.url;

    return div([
      /// HEADER
      header(
        classes: 'w-full bg-white shadow fixed top-0 left-0 z-50',
        [
          div(
            classes: 'relative max-w-7xl mx-auto flex items-center justify-between px-5 py-5 min-h-[80px]',

            [
              /// LEFT SECTION (Hamburger + Desktop Logo)
              div(
                classes: 'flex items-center gap-4',
                [
                  /// MOBILE LOGO (center)
                  div(
                    classes: 'absolute left-5 top-1/2 transform -translate-y-1/2 md:hidden',
                    [
                      Link(
                        to: '/',
                        child: img(
                          src: 'images/logo.svg',
                          classes: 'w-15',
                        ),
                      ),
                    ],
                  ),

                  /// HAMBURGER (mobile)
                  button(
                    classes: 'absolute right-5 top-1/2 transform -translate-y-1/2 md:hidden text-3xl cursor-pointer',
                    events: {
                      'click': (e) {
                        setState(() {
                          isMenuOpen = true;
                        });
                      },
                    },
                    [text('☰')],
                  ),

                  /// DESKTOP LOGO
                  Link(
                    to: '/',
                    child: img(
                      src: 'images/logo2.svg',
                      classes: 'hidden md:block w-50 h-15',
                    ),
                  ),
                ],
              ),

              /// DESKTOP MENU
              nav(
                classes: 'hidden md:flex gap-6 font-medium text-gray-700',
                [
                  for (var route in routes)
                    Link(
                      to: route.$2,
                      child: span(
                        classes: activePath == route.$2 ? 'text-[#F7941E] font-bold' : 'hover:text-[#F7941E]',
                        [text(route.$1)],
                      ),
                    ),
                ],
              ),

              /// CONTACT BUTTON (desktop only)
              // --- CONTACT BUTTON (desktop only) ---
              a(
                href: '#footer-section', // Footer ke liye anchor
                classes:
                    'hidden md:flex flex-shrink-0 bg-[#F7941E] text-white px-4 py-2 rounded-full text-sm font-semibold hover:bg-[#262262] transition whitespace-nowrap',
                [text('Contact us')],
              ),
            ],
          ),
        ],
      ),

      /// OVERLAY
      if (isMenuOpen)
        div(
          classes: 'fixed inset-0 bg-black/40 z-40',
          events: {
            'click': (e) {
              setState(() {
                isMenuOpen = false;
              });
            },
          },
          [],
        ),

      /// SIDE MENU (mobile)
      div(
        classes:
            'fixed top-0 left-0 w-full bg-white shadow-lg z-50 transform ${isMenuOpen ? "translate-y-0" : "-translate-y-full"} transition-transform duration-300',
        [
          /// MENU HEADER
          div(
            classes: 'p-6 flex justify-between items-center border-b',
            [
              text('Menu'),

              button(
                classes: 'text-2xl',
                events: {
                  'click': (e) {
                    setState(() {
                      isMenuOpen = false;
                    });
                  },
                },
                [text('✕')],
              ),
            ],
          ),

          /// MENU ITEMS
          div(
            classes: 'flex flex-col gap-5 p-6',
            [
              for (var route in routes)
                Link(
                  to: route.$2,
                  child: span(
                    classes: activePath == route.$2 ? 'text-[#F7941E] font-bold' : 'text-gray-700 hover:text-[#F7941E]',
                    events: {
                      'click': (e) {
                        setState(() {
                          isMenuOpen = false;
                        });
                      },
                    },
                    [text(route.$1)],
                  ),
                ),
            ],
          ),
        ],
      ),
    ]);
  }
}
