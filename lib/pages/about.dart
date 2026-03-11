import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about-section', classes: 'w-full bg-white py-16 scroll-mt-20', [
      div(classes: 'max-w-7xl mx-auto px-6', [
        // FLEX CONTAINER FOR TEXT AND IMAGE
        div(classes: 'flex flex-col md:flex-row gap-10 items-start mb-12', [
          // LEFT SIDE: TEXT CONTENT
          div(classes: 'w-full md:w-1/2', [
            h2(classes: 'text-3xl md:text-4xl font-bold text-[#262262] mb-6', [
              text("Brief History"),
            ]),
            p(classes: 'text-gray-600 leading-relaxed text-justify mb-4', [
              text(
                "The PIA Employees Cooperative Housing Society was registered under cooperative societies act 1925 registered by the Registrar Cooperative Societies Punjab vide 'registration certificate' No. 942 dated 08-09-1979 for the establishment of a Cooperative Housing Society. 1791 kanals 09 Marlas for Phase-I and 380 kanals 05 Marlas for its Phase-II. Was purchased in Niaz Baig Ad Satto Katla Revenue estate. Accordingly, LDA gave approval of both phases vide their letters No. CMP/53S/LDA/135 (Phase-I) and CMP/105-S/LDA/137 (Phase-II) both dated 10-10-1982.",
              ),
            ]),
            p(classes: 'text-gray-600 leading-relaxed text-justify', [
              text(
                "The Society comprises of Nine (9) Blocks, Seven (7) in Phase-I (A, B, C, D, E, F & G) while two (2) Blocks in Phase-II (A1 & B1). The Society is situated at a very prime location of city near Township, WAPDA Town, Revenue Society, Punjab Govt Society, Iqbal Avenue and Johar Town etc.",
              ),
            ]),
          ]),

          // RIGHT SIDE: IMAGE
          div(classes: 'w-full md:w-1/2 shadow-xl rounded-lg overflow-hidden', [
            img(
              src: 'images/slide2.jpg', // Apni image ka sahi path dein
              alt: 'Society Map',
              classes: 'w-full h-full object-cover shadow-lg',
            ),
          ]),
        ]),

        // TABLE SECTION
        div(classes: 'w-full overflow-hidden rounded-lg border border-gray-200 shadow-sm', [
          // Table Header
          div(classes: 'bg-[#1E73BE] text-white p-4 font-bold text-lg', [
            text("Residential Plots in both Phases"),
          ]),

          // Table Row 1
          div(classes: 'flex justify-between border-b border-gray-100 p-4 bg-white', [
            span(classes: 'text-gray-700 font-medium', [text("01 Kanal")]),
            span(classes: 'text-gray-900 font-bold', [text("936 Plots")]),
          ]),

          // Table Row 2
          div(classes: 'flex justify-between p-4 bg-gray-50', [
            span(classes: 'text-gray-700 font-medium', [text("10 Marla")]),
            span(classes: 'text-gray-900 font-bold', [text("1150 Plots")]), // Example data
          ]),
        ]),
      ]),
    ]);
  }
}
