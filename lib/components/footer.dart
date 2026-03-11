import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(id: 'footer-section', classes: 'w-full bg-white pt-16 pb-8 border-t border-gray-100', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // TOP SECTION: 3 Columns
        div(classes: 'grid grid-cols-1 md:grid-cols-3 gap-12 mb-16', [
          // COLUMN 1: Brand & Links
          div([
            h2(classes: 'text-2xl font-bold text-[#006837] mb-6', [text("SMCHSL")]),
            p(classes: 'text-gray-500 mb-6 leading-relaxed', [
              text(
                "Become a part of Shamsi Mercantile Co-operative Housing Society and experience organized living, community harmony, and a promising future.",
              ),
            ]),
            h3(classes: 'text-lg font-bold text-[#1a2b4b] mb-4', [text("Important Links")]),
            ul(classes: 'space-y-2', [
              _footerLink("Management", "/management"),
              _footerLink("Features", "/#features-section"),
            ]),
          ]),

          // COLUMN 2: Contact Us
          div([
            h3(classes: 'text-lg font-bold text-[#1a2b4b] mb-6', [text("Contact Us")]),
            div(classes: 'space-y-4', [
              _contactItem('images/icon-email.svg', 'shamsimercantilechsl@gmail.com'),
              _contactItem(
                'images/icon-location.svg',
                'Office # 02, Ruby Heights, Jamal ud Din Afghani Road, Sharfabad, Karachi, Pakistan.',
              ),
              _contactItem('images/icon-phone.svg', '+92 333 1351353'),
              _contactItem('images/icon-phone.svg', '021-34917503'),
              _contactItem('images/icon-phone.svg', '021-34537503'),
            ]),
          ]),

          // COLUMN 3: Connect With Us
          div([
            h3(classes: 'text-lg font-bold text-[#1a2b4b] mb-6', [text("Connect With Us")]),
            div(classes: 'flex gap-4', [
              _socialIcon(
                'images/icon-fb.svg',
                'https://www.facebook.com/ShamsiMercantileCooperativeHousingSocietyLtd/',
              ),
              _socialIcon('images/icon-twitter.svg', 'https://twitter.com'),
            ]),
          ]),
        ]),

        // BOTTOM SECTION: Copyright
        div(classes: 'pt-8 border-t border-gray-100 text-center', [
          p(classes: 'text-gray-400 text-sm', [
            text("© copyright 2026. All Rights Reserved."),
          ]),
        ]),
      ]),
    ]);
  }

  // Helper for Links
  Component _footerLink(String label, String href) {
    return li([
      a(href: href, classes: 'text-gray-400 hover:text-[#006837] transition-colors text-sm', [text(label)]),
    ]);
  }

  // Helper for Contact Info
  Component _contactItem(String icon, String info) {
    return div(classes: 'flex items-start gap-3', [
      img(src: icon, classes: 'w-5 h-5 mt-1 opacity-60', alt: ''),
      p(classes: 'text-gray-500 text-sm flex-1 leading-snug', [text(info)]),
    ]);
  }

  // Helper for Social Icons
  Component _socialIcon(String icon, String url) {
    return a(
      href: url,
      classes:
          'w-10 h-10 rounded-full bg-gray-50 flex items-center justify-center hover:bg-[#006837] group transition-all',
      [
        img(src: icon, classes: 'w-5 h-5 group-hover:invert', alt: 'social'),
      ],
    );
  }
}
