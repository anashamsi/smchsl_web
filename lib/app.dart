import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:smchsl_web/pages/management.dart';
import 'components/footer.dart'; 

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  const App({super.key});

  @override
Component build(BuildContext context) {
  return div(classes: 'min-h-screen flex flex-col bg-white', [ // min-h-screen footer ko niche rakhega
    const Header(),
    
    // Main Content Area
    main_(classes: 'flex-1', [ // flex-1 content ko expand karega
      Router(
        routes: [
          Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
          Route(path: '/management', title: 'Management', builder: (context, state) => const Management()),
        ],
      ),
    ]),
    
     Footer(),
  ]);
}

  @css
  static List<StyleRule> get styles => [
    css('.main').styles(
      display: .flex,
      flexDirection: .column,
      minHeight: 100.vh, // Sirf ye rakhein
    ),
  ];
}
