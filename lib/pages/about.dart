import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about-section', classes: 'w-full bg-slate-50 py-20 scroll-mt-20', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // --- TOP SECTION: HISTORY ---
        div(classes: 'flex flex-col lg:flex-row gap-12 items-center mb-20', [
          // TEXT
          div(classes: 'w-full lg:w-1/2', [
            h2(classes: 'text-2xl md:text-3xl font-extrabold text-[#262261] mb-8 relative', [
              text("Brief History"),
              span(classes: 'absolute -bottom-2 left-0 w-20 h-1 bg-[#F6921C]', []),
            ]),
            p(classes: 'text-gray-600 leading-relaxed text-sm md:text-base md:text-justify mb-6', [
              text(
                "The Shamsi Mercantile Co-operative Housing Society Ltd. was registered under the Co-operative Societies Act, 1925 with the Registrar Co-operative Societies in the year 2003 for the establishment and development of a cooperative housing scheme for its members. The society was formed with the objective of providing residential plots and organized infrastructure based on cooperative principles. The scheme comprises planned residential development designed to ensure a secure and well-managed community environment for its members. The layout plan and development of the society are carried out in accordance with the rules and regulations of the concerned authorities. The society aims to promote welfare, mutual cooperation, and orderly residential development for its members under the cooperative housing system.",
              ),
            ]),
          ]),

          // IMAGE
          // IMAGE
          div(classes: 'w-full lg:w-1/2 group', [
            div(
              classes:
                  'relative overflow-hidden rounded-2xl shadow-xl transition-transform duration-500 group-hover:scale-[1.02] bg-gray-100',
              [
                img(
                  src: 'images/slide2.webp',
                  alt: 'Society Map',
                  // Mobile par aspect-video aur h-auto rakha hai taake box ke andar fit rahe
                  classes: 'w-full h-auto aspect-video md:h-80 lg:h-80 object-cover block',
                ),
                div(
                  classes: 'absolute inset-0 bg-gradient-to-t from-[#262262]/20 to-transparent pointer-events-none',
                  [],
                ),
              ],
            ),
          ]),
        ]),

        // --- RESIDENTIAL PLOTS SECTION ---
        div(classes: 'mb-12', [
          div(classes: 'flex items-center justify-between mb-8 border-l-8 border-[#F6921C] pl-6', [
            div([
              h3(classes: 'text-2xl font-bold text-[#262262]', [text("Residential Plots")]),
              p(classes: 'text-gray-500', [text("Planned housing units for a modern lifestyle")]),
            ]),
            div(
              classes:
                  'bg-[#1E73BE] text-white px-3 py-1 md:px-6 md:py-2 rounded-full font-bold shadow-md text-xs md:text-base whitespace-nowrap',
              [
                text("Total: 1510 Plots"),
              ],
            ),
          ]),

          // Grid for Residential Plots
          div(classes: 'grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4', [
            ..._buildPlotCards(["R-120", "A-240", "A-280", "A-300", "B-360", "D-720"], "Sq. Yards", "border-[#1E73BE]"),
          ]),
        ]),

        // --- COMMERCIAL PLOTS SECTION ---
        div(classes: 'mb-8', [
          div(classes: 'flex items-center justify-between mb-8 border-l-8 border-[#262261] pl-6', [
            div([
              h3(classes: 'text-2xl font-bold text-[#262262]', [text("Commercial Plots")]),
              p(classes: 'text-gray-500', [text("Prime locations for business growth")]),
            ]),
            div(
              classes:
                  'bg-[#262262] text-white px-3 py-1 md:px-6 md:py-2 rounded-full font-bold shadow-md text-xs md:text-base whitespace-nowrap',
              [
                text("Total: 268 Plots"),
              ],
            ),
          ]),

          // Grid for Commercial Plots
          div(classes: 'grid grid-cols-2 md:grid-cols-4 gap-4', [
            ..._buildPlotCards(
              ["CM-100", "SB-Type 278", "SB-Type 400", "Petrol Pump 1920"],
              "Sq. Yards",
              "border-[#262262]",
            ),
          ]),
        ]),
      ]),
    ]);
  }

  // Helper function to build consistent cards
  List<Component> _buildPlotCards(List<String> sizes, String unit, String borderColor) {
    return sizes
        .map(
          (size) => div(
            classes:
                'bg-white p-6 rounded-xl border-b-4 $borderColor shadow-sm hover:shadow-md transition-shadow text-center group',
            [
              span(classes: 'block text-xl font-bold text-gray-800 group-hover:text-[#1E73BE] transition-colors', [
                text(size),
              ]),
              span(classes: 'text-sm text-gray-500 uppercase tracking-wider font-medium', [text(unit)]),
            ],
          ),
        )
        .toList();
  }
}
