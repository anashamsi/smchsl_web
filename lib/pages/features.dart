import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Features extends StatelessComponent {
  const Features({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'features-section', classes: 'w-full bg-white py-16 scroll-mt-20', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // TITLE
        h2(classes: 'text-4xl font-bold text-[#1a2b4b] text-center mb-16', [
          text("Features"),
        ]),

        // CARDS GRID
        div(classes: 'grid grid-cols-1 md:grid-cols-3 gap-8', [
          // CARD 1: Accessibility
          _featureCard(
            icon: 'images/icon-accessibility.svg', // Apne icons ka path dein
            title: 'Accessibility',
            description: 'PIA Employees Cooperative Housing Society Limited Near WAPDA Town Goal Chaker, Lahore.',
          ),

          // CARD 2: Security
          _featureCard(
            icon: 'images/icon-security.svg',
            title: 'Security',
            description:
                'We have recruited skilled enforcers to take care of security because, for us, our cherished residents\' safety is our top priority.',
          ),

          // CARD 3: Facilities
          _featureCard(
            icon: 'images/icon-facilities.svg',
            title: 'Facilities',
            description:
                'We have installed numerous parks and constructed a dedicated zoo for elders and kids alike to enjoy their leisure time.',
          ),
        ]),
      ]),
    ]);
  }

  // Helper function to create cards
  Component _featureCard({required String icon, required String title, required String description}) {
    return div(
      classes:
          'bg-white p-8 rounded-2xl border border-gray-100 shadow-[0_4px_20px_rgba(0,0,0,0.05)] flex flex-col items-start text-left',
      [
        // ICON BOX
        div(classes: 'bg-[#006837] p-4 rounded-xl mb-6', [
          img(src: icon, classes: 'w-8 h-8 invert', alt: title), // invert agar icon black hai to white karne ke liye
        ]),

        // CARD TEXT
        h3(classes: 'text-xl font-bold text-gray-800 mb-4', [text(title)]),

        p(classes: 'text-gray-500 leading-relaxed text-sm md:text-base', [
          text(description),
        ]),
      ],
    );
  }
}
