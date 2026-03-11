import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class Management extends StatelessComponent {
  const Management({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'management-section', classes: 'w-full bg-white pt-32 pb-16', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // TOP BANNER (As per screenshot)
        div(classes: 'relative w-full h-64 md:h-80 rounded-2xl overflow-hidden mb-16', [
          img(src: 'images/slide1.png', classes: 'w-full h-full object-fill', alt: 'Management Banner'),
          div(classes: 'absolute inset-0 bg-black/40 flex items-center justify-center', [
            h1(classes: 'text-4xl md:text-6xl font-bold text-white', [text("Management")]),
          ]),
        ]),

        // INTRO TEXT
        div(classes: 'text-center max-w-4xl mx-auto mb-16', [
          h2(classes: 'text-3xl font-bold text-[#F6921C] mb-6 uppercase tracking-wide', [text("Our Team")]),
        ]),

        // MEMBERS GRID (3 Columns on Desktop)
        div(classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10', [
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "President", image: "images/profile.svg"),
          _memberCard(name: "Badar ud Din Alwajih", designation: "Vice President", image: "images/profile.svg"),
          _memberCard(name: "Kamran Mateen Batla", designation: "Hon. General Secretary", image: "images/profile.svg"),
          _memberCard(name: "Abdul Rehamn", designation: "Joint Secretary", image: "images/profile.svg"),
          _memberCard(name: "Ehtisham Shamsi", designation: "Treasurer", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
          _memberCard(name: "Naveed Ahmed Shakeel Shamsi", designation: "Member", image: "images/profile.svg"),
        ]),
      ]),
    ]);
  }

  // INDIVIDUAL MEMBER CARD
  Component _memberCard({required String name, required String designation, required String image}) {
    return div(
      classes:
          'flex flex-col items-center p-6 bg-white border border-gray-100 shadow-sm rounded-xl hover:shadow-md transition-shadow duration-300',
      [
        // Avatar Frame
        div(classes: 'w-20 h-35  rounded-lg overflow-hidden mb-6   p-2', [
          img(
            src: image,
            classes: 'w-full h-full object-contain opacity-80 group-hover:opacity-100  ',
            alt: name,
          ),
        ]),

        // Text Info
        h3(classes: 'text-xl font-bold text-[#262261] mb-1 text-center', [text(name)]),
        p(classes: 'text-[#F7941E] font-semibold text-sm uppercase tracking-tighter', [text(designation)]),

        // Bottom Line Decor
        div(classes: 'w-12 h-1 bg-gray-200 mt-4 rounded-full', []),
      ],
    );
  }
}
