// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:smchsl_web/components/header.dart' as _header;
import 'package:smchsl_web/pages/home.dart' as _home;
import 'package:smchsl_web/pages/management.dart' as _management;
import 'package:smchsl_web/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _header.Header: ClientTarget<_header.Header>('header'),
    _home.Home: ClientTarget<_home.Home>('home'),
    _management.Management: ClientTarget<_management.Management>('management'),
  },
  styles: () => [..._app.App.styles],
);
